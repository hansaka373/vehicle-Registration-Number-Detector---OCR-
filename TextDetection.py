import numpy as np
from flask import Flask, render_template, request, redirect, url_for, flash
from werkzeug.utils import secure_filename
import cv2
import pytesseract
import re
import mysql.connector

app = Flask(__name__, static_url_path='/static')
app.secret_key = "super_secret_key"

pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract'

# method for fetching data from the Database
def fetch_vehicle_data(registration_number):
    try:
        connection = mysql.connector.connect(
            host="localhost",
            port='3306',
            user="root",
            password="enactor",
            database="VehicleProjectDB"
        )

        cursor = connection.cursor()

        # SQL query 
        sql = "SELECT * FROM vehicledetails WHERE Registration_Number = %s"
        cursor.execute(sql, (registration_number,))
        data = cursor.fetchall()
        
        # Fetch column names
        column_names = [i[0] for i in cursor.description]

        if data:
            zipped_data = zip(column_names, data[0])
            data_dict = dict(zipped_data)  # Convert zip object to dictionary
            flash({"Registration Number": registration_number, "Data": data_dict})
        else:
            flash({"Registration Number": registration_number, "Data": None})

    except Exception as e:
        flash(f"Database Error: {str(e)}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

# Method for detecting Registration Number
def perform_ocr(image_file):
    image_array = np.frombuffer(image_file.read(), np.uint8)
    img = cv2.imdecode(image_array, cv2.IMREAD_COLOR)
    all_extracted_text = pytesseract.image_to_string(img, config='--psm 11')

    print(all_extracted_text)

    # Pattern of the registration number
    pattern_for_registration_number = re.compile(r'\b([A-Z0-9]{2}-[0-9]{4})\b')
    matches_for_registration_number = re.findall(pattern_for_registration_number, all_extracted_text)

    registration_number = matches_for_registration_number[0] if matches_for_registration_number else "No matches found."

    # Validation part
    if registration_number != "No matches found":
        fetch_vehicle_data(registration_number)
    else:
        flash("Registration number not detected.")


# Flask part
@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        if 'file' not in request.files:
            flash('No file part')
            return redirect(request.url)
        
        file = request.files['file']
        
        if file.filename == '':
            flash('No selected file')
            return redirect(request.url)
        
        if file:
            perform_ocr(file)
            return redirect(request.url)

    return render_template('upload.html')


@app.route('/manual_entry', methods=['POST'])
def manual_entry():
    registration_number = request.form.get('registration_number')
    if registration_number:
        fetch_vehicle_data(registration_number)
    else:
        flash("Please enter a registration number.")

    return redirect(url_for('upload_file'))


if __name__ == '__main__':
    app.run(debug=True)
