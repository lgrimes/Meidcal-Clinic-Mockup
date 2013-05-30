
--Create Database ClinicManagement

USE ClinicManagement


DROP TABLE ClinicManagement.dbo.Visit

DROP TABLE ClinicManagement.dbo.Bed

DROP TABLE ClinicManagement.dbo.Doctor

DROP TABLE ClinicManagement.dbo.Patient


CREATE TABLE dbo.Patient
(
 ID int PRIMARY KEY IDENTITY,
 Name varchar (50) NOT NULL,
 Address	varchar (50) NOT NULL,
 DateOfBirth DateTime NOT NULL,
 Phone varchar (20),
 EmergencyContact varchar (255),
 DateOfRegistration DateTime NOT NULL,
 CONSTRAINT uc_PatientID UNIQUE (Name, Address)
 )
GO


CREATE TABLE dbo.Doctor
(
 ID int PRIMARY KEY IDENTITY,
 Name varchar (50) NOT NULL,
 Address varchar (50) NOT NULL,
 DateOfBirth DateTime NOT NULL,
 Phone varchar (20),
 CONSTRAINT uc_DoctorID UNIQUE (Name, Address)
 )
GO

CREATE TABLE dbo.Bed
(
 ID int PRIMARY KEY IDENTITY,
 BedName varchar (50) NOT NULL,
 RatePerDay int NOT NULL,
 BedType varchar (50) NOT NULL,
 CONSTRAINT uc_BedName UNIQUE (BedName)
)
GO

CREATE TABLE dbo.Visit
(
 ID int PRIMARY KEY IDENTITY,
 PatientType bit NOT NULL,
 DoctorID int NOT NULL FOREIGN KEY REFERENCES Doctor(ID),
 BedID int NOT NULL FOREIGN KEY REFERENCES Bed(ID),
 DateOfVisit DateTime NOT NULL,
 DateOfDischarge DateTime,
 Symptoms varchar (1000),
 Disease varchar (1000),
 Treatment varchar (1000)
)
GO