CREATE TABLE IF NOT EXISTS doctors(
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT NOT NULL,
second_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS patients(
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT NOT NULL,
second_name TEXT NOT NULL,
dicease TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS doctors_patients(
doctor_id INTEGER,
patient_id INTEGER,
PRIMARY KEY (doctor_id, patient_id),
FOREIGN KEY (doctor_id) REFERENCES doctors(id),
FOREIGN KEY (patient_id) REFERENCES patients(id)
);