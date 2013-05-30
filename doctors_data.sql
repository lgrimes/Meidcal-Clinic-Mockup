USE ClinicManagement
GO

INSERT dbo.Doctor (Name, Address, DateOfBirth, Phone)
VALUES ('John', 'somewhere st 12', '02/02/2002', '12345678')
GO

INSERT dbo.Doctor (Name, Address, DateOfBirth, Phone)
VALUES ('Kent', 'somewhereelse st 121', '02/02/2001', '22345678')
GO


INSERT dbo.Patient (Name, Address, DateOfBirth, Phone, EmergencyContact, DateOfRegistration)
VALUES ('James Bond', 'Secret locatoin', '01/01/1953','007','Q Branch','01/01/2000')
GO

INSERT dbo.Patient (Name, Address, DateOfBirth, Phone, EmergencyContact, DateOfRegistration)
VALUES ('Superman', 'Crypton', '05/05/1932','12342345','Jonathan and Martha Kent','01/01/2000')
GO