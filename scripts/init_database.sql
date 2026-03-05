USE master;
GO

-- Drop and recreate the 'CreditRisk' database
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'CreditRisk')
BEGIN
	ALTER DATABASE CreditRisk SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE CreditRisk
END;
GO

-- Create the 'CreditRisk' database
CREATE DATABASE CreditRisk;

USE CreditRisk;

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
