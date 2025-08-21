-- creates a doctors table
-- a doctro can have many patients and a patient can have many doctors
CREATE TABLE IF NOT EXISTS doctors(
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT NOT NULL,
second_name TEXT NOT NULL
);
ALTER TABLE doctors ADD COLUMN specialization TEXT NOT NULL; 
-- creates a patients table

CREATE TABLE IF NOT EXISTS patients(
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT NOT NULL,
second_name TEXT NOT NULL,
dicease TEXT NOT NULL
);
-- create the joint table, a joint between the doctors and patients table
-- it has a collumn fo the primary key that has a the patients id and the doctors is
-- it also has foreign keys that reference to specific tables 
CREATE TABLE IF NOT EXISTS doctors_patients(
doctor_id INTEGER,
patient_id INTEGER,
PRIMARY KEY (doctor_id, patient_id),
FOREIGN KEY (doctor_id) REFERENCES doctors(id),
FOREIGN KEY (patient_id) REFERENCES patients(id)
);