/*
==================================================
Create Database and Schemas
==================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script setus up three schemas 
  within the database: 'bronze', 'silver', and 'gold'.

Warning:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanentky deleted. Proceed with caution and enusre you have proper 
  backups before running this script.
*/

USE master;
GO

-- Drop or recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse 
	SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWarehouse
END;
GO

-- Create Database
CREATE DATABASE DataWarehouse;


USE DataWarehouse;
GO
-- Create Schemas for the three databases layer
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
