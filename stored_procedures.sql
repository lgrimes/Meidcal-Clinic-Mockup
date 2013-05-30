USE ClinicManagement
GO

CREATE PROCEDURE get_doctors
AS
	SELECT * FROM Doctor
GO

CREATE PROCEDURE get_patients
AS
	SELECT * FROM Patient
GO

CREATE PROCEDURE insert_patient (
@Name char (50),
@Address char (255),
@DateOfBirth DateTime,
@Phone char (20),
@EmergencyContact char (255)
)
AS
	INSERT dbo.Patient (Name, Address, DateOfBirth, Phone, EmergencyContact, DateOfRegistration)
	VALUES (@Name, @Address, @DateOfBirth,
			@Phone, @EmergencyContact, GETDATE())
GO