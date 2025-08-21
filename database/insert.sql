INSERT OR IGNORE INTO doctors ("first_name", "second_name", "specialization") VALUES
('John', 'Smith', 'Cardiology'),
('Emily', 'Johnson', 'Dermatology'),
('Michael', 'Brown', 'Neurology'),
('Sophia', 'Davis', 'Pediatrics');

INSERT OR IGNORE INTO patients ("first_name", "second_name", "dicease") VALUES
('Alice', 'Walker', 'Diabetes'),
('Robert', 'Miller', 'Hypertension'),
('Maria', 'Garcia', 'Asthma'),
('James', 'Wilson', 'Flu'),
('Linda', 'Martinez', 'Arthritis'),
('David', 'Anderson', 'Allergy'),
('Sarah', 'Taylor', 'Migraine'),
('Thomas', 'Harris', 'COVID-19'),
('Karen', 'Clark', 'Pneumonia'),
('Daniel', 'Lewis', 'Skin Rash');

INSERT OR IGNORE INTO doctors_patients(doctor_id, patient_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),  -- Doctor 1 treats 4 patients

(2, 3),
(2, 5),
(2, 6),
(2, 7),  -- Doctor 2 treats 4 patients

(3, 2),
(3, 6),
(3, 8),
(3, 9),  -- Doctor 3 treats 4 patients

(4, 1),
(4, 7),
(4, 9),
(4, 10); -- Doctor 4 treats 4 patients
