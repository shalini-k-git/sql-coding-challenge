Day 1: SQL Coding Challenge – Hospital Database 🏥
<br>
__Question 1: CREATE Table
<br>
Scenario: Create a table named Patients with the following fields:
<br>
PatientID, PatientName, Age, Gender, AdmissionDate.
<br>
Expected Output:
<br>
A new table Patients is created successfully.
<br>
<br>
__
<br>
Question 2: ALTER – Add Column
<br>
Scenario: Add a new column DoctorAssigned VARCHAR(50) to the Patients table.
<br>
Expected Output:
<br>
The Patients table now has an additional column DoctorAssigned.
__
Question 3: ALTER – Modify Column
Scenario: Increase the length of PatientName from VARCHAR(50) to VARCHAR(100).
Expected Output:
The column PatientName now allows up to 100 characters.
__
Question 4: RENAME Table
Scenario: Rename the table Patients to Patient_Info.
Expected Output:
The table name is successfully changed to Patient_Info.
__
Question 5: TRUNCATE vs DROP
Scenario:
At year-end, delete all patient records but keep the table. Later, remove it permanently.
Expected Output:
•    TRUNCATE keeps the structure but clears data.
•    DROP removes the table completely. 
