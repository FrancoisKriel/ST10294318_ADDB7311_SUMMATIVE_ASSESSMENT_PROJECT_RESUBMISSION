--ST10294318_ADDB7311_SUMMATIVE_ASSESSMENT_PROJECT

@ADDB7311_PRELOAD SP1.sql
-- QUESTION 1
-- Table for Volunteers
CREATE TABLE VOLUNTEER (
    	VOL_ID VARCHAR2(10) PRIMARY KEY,
    	VOL_FNAME VARCHAR2(50) NOT NULL,
    	VOL_LNAME VARCHAR2(50) NOT NULL,
    	CONTACT_NO VARCHAR2(15)
);

-- Table for Donors
CREATE TABLE DONOR (
    	DONOR_ID VARCHAR2(10) PRIMARY KEY,
    	DONOR_FNAME VARCHAR2(50) NOT NULL,
    	DONOR_LNAME VARCHAR2(50) NOT NULL,
    	CONTACT_NO VARCHAR2(15)
);

-- Table for Bikes
CREATE TABLE BIKE (
    	BIKE_ID VARCHAR2(10) PRIMARY KEY,
    	BIKE_TYPE VARCHAR2(50) NOT NULL,
    	DESCRIPTION VARCHAR2(255),
    	MANUFACTURER VARCHAR2(50),
    	VALUE NUMBER(10, 2)
);

-- Table for Donations
CREATE TABLE DONATION (
    	DONATION_ID VARCHAR2(10) PRIMARY KEY,
	DONOR_ID VARCHAR2(10) REFERENCES DONOR(DONOR_ID),
   	VOLUNTEER_ID VARCHAR2(10) REFERENCES VOLUNTEER(VOL_ID),
  	BIKE_ID VARCHAR2(10) REFERENCES BIKE(BIKE_ID),
   	DONATION_DATE DATE
);

SELECT * FROM VOLUNTEER;
SELECT * FROM DONOR;
SELECT * FROM BIKE;
SELECT * FROM DONATION;

-- Insert data into VOLUNTEER table
INSERT ALL
    INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT_NO, ADDRESS, EMAIL)
        VALUES ('vol101', 'Kenny', 'Temba', '0677277521', '10 Sands Road', 'kennyt@bikerus.com')
    INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT_NO, ADDRESS, EMAIL)
        VALUES ('vol102', 'Mamelodi', 'Marks', '0737377522', '20 Langes Street', 'mamelodim@bikerus.com')
    INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT_NO, ADDRESS, EMAIL)
        VALUES ('vol103', 'Ada', 'Andrews', '0817117523', '31 Williams Street', 'adanyaa@bikerus.com')
    INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT_NO, ADDRESS, EMAIL)
        VALUES ('vol104', 'Evans', 'Tambala', '0697215244', '1 Free Road', 'evanst@bikerus.com')
    INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT_NO, ADDRESS, EMAIL)
        VALUES ('vol105', 'Xolani', 'Samson', '0727122255', '12 Main Road', 'xolanis@bikerus.com')
SELECT * FROM DUAL;


-- Insert data into DONOR table
INSERT ALL
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID11', 'Jeff', 'Wanya', '0827172250', 'wanyajeff@ymail.com')
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID12', 'Sthembeni', 'Pisho', '0837865670', 'sthepisho@ymail.com')
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID13', 'Luramo', 'Misi', '0826575650', 'luramom@ymail.com')
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID15', 'Abraham', 'Xolani', '0797656430', 'axolani@ymail.com')
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID16', 'Rumi', 'Jones', '0668899221', 'rjones@true.com')
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID17', 'Xolani', 'Redo', '0614553389', 'xredo@ymail.com')
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID18', 'Tenny', 'Stars', '0824228870', 'tenstars@true.com')
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID19', 'Tiny', 'Rambo', '0715554333', 'trambo@ymail.com')
    INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_LNAME, CONTACT_NO, EMAIL)
        VALUES ('DID20', 'Yannick', 'Leons', '0615554323', 'yleons@true.com')
SELECT * FROM DUAL;


-- Insert data into BIKE table
INSERT ALL
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B001', 'BMX AX1', 'Road Bike', 'BMX')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B002', 'Giant Domain 1', 'Road Bike', 'Giant')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B003', 'Ascent 261n', 'Mountain Bike', 'Raleigh')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B004', 'Canyon 6X', 'Kids Bike', 'Canyon')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B005', 'Marvel', 'Gravel Road Bike', 'BMX')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B006', 'Mountain 21 Speed', 'Mountain Bike', 'BMX')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B007', 'Canyon Roadster', 'Road Bike', 'Canyon')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B008', 'Legion 101', 'Hybrid Bike', 'BMX')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B009', 'Madonna 9', 'Road Bike', 'Trek')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B010', 'Comp 2022', 'Mountain Bike', 'Trek')
    INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B011', 'BMX AX15', 'Road Bike', 'BMX')
SELECT * FROM DUAL;


-- Insert data into DONATIONS table
INSERT ALL
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID11', 'B001', 1500, 'vol101', '2023-05-01')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID12', 'B002', 2500, 'vol101', '2023-05-03')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID13', 'B003', 1000, 'vol103', '2023-05-03')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID14', 'B004', 1750, 'vol105', '2023-05-05')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID15', 'B006', 2000, 'vol101', '2023-05-07')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID16', 'B007', 1800, 'vol105', '2023-05-09')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID17', 'B008', 1500, 'vol101', '2023-05-15')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID18', 'B009', 1500, 'vol103', '2023-05-19')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID12', 'B010', 2500, 'vol103', '2023-05-25')
    INTO DONATIONS (DONOR_ID, BIKE_ID, AMOUNT, VOLUNTEER_ID, DONATION_DATE) VALUES ('DID19', 'B011', 2500, 'vol103', '2023-05-30')
SELECT * FROM DUAL;

-- QUESTION 2
-- Displaying DONOR_ID and BIKE information if the BIKE is valued at more than 1500

SELECT 
	D.DONOR_ID, 
	B.BIKE_TYPE, 
	B.DESCRIPTION, 
	D.VALUE AS BIKE_VALUE 
FROM 
	Donation D 
JOIN 
	Bike B ON D.BIKE_ID = B.BIKE_ID 
WHERE 
	D.VALUE > 1500;

--QUESTION 3
--adding VAT to bike prices and displaying it in the table
WITH VAT_RATE AS ( 
    SELECT 0.15 AS VAT 
)
SELECT 
    B.BIKE_DESCRIPTION, 
    B.BIKE_MANUFACTURER, 
    B.BIKE_TYPE, 
    D.VALUE AS VALUE, 
    ROUND(D.VALUE * (SELECT VAT FROM VAT_RATE), 2) AS VAT_AMOUNT, 
    ROUND(D.VALUE * (1 + (SELECT VAT FROM VAT_RATE)), 2) AS TOTAL_AMOUNT 
FROM 
    Donation D 
JOIN 
    Bike B ON D.BIKE_ID = B.BIKE_ID 
WHERE 
    B.BIKE_TYPE = 'Road Bike';

--QUESTION 4
--
CREATE VIEW vwBikeRUs AS 
SELECT 
	CONCAT(D.DONOR_FIRST_NAME, ' ', D.DONOR_LAST_NAME) AS DONOR_NAME, 
	D.CONTACT_NUMBER AS CONTACT_NO, 
	B.BIKE_TYPE, 
	D.DONATION_DATE 
FROM
	Donation D 
JOIN 
	Bike B ON D.BIKE_ID = B.BIKE_ID 
JOIN 
	Volunteer V ON D.VOLUNTEER_ID = V.VOLUNTEER_ID
WHERE 
	V.VOLUNTEER_ID = 'vol105';



-- QUESTION 5
--
-- Creating the stored procedure 
CREATE PROCEDURE spDonorDetails (@BikeID VARCHAR(10)) 
AS 
BEGIN 
	-- Declare variables to hold the retrieved values 
	DECLARE @DonorName NVARCHAR(100), @ContactNo VARCHAR(15), @VolunteerFirstName NVARCHAR(50), @DonationDate DATE, @BikeDescription NVARCHAR(100); 
	-- Begin a try block to catch any potential errors 
	BEGIN TRY 
	-- Select the required details from the database 
	SELECT 
		CONCAT(D.DONOR_FIRST_NAME, ' ', D.DONOR_LAST_NAME) AS DonorName, 
		D.CONTACT_NUMBER AS ContactNo, 
		V.FIRST_NAME AS VolunteerFirstName, 
		D.DONATION_DATE AS DonationDate, 
		B.DESCRIPTION AS BikeDescription 
	INTO 
		@DonorName, @ContactNo, @VolunteerFirstName, @DonationDate, @BikeDescription 
	FROM 
		Donation D JOIN Bikes B ON D.BIKE_ID = B.BIKE_ID 
	JOIN 
		Volunteer V ON D.VOLUNTEER_ID = V.VOLUNTEER_ID 
	WHERE 
		D.BIKE_ID = @BikeID; 
	-- Print the result in the desired format 
	PRINT 'ATTENTION: ' + @DonorName + ' assisted by: ' + @VolunteerFirstName + ', donated the ' + @BikeDescription + ' on the ' + FORMAT(@DonationDate, 'dd/MMM/yy'); 
	END TRY 
	-- Catch block to handle errors 
	BEGIN CATCH 
		-- Print an error message with the error details 
PRINT 'Error: ' + ERROR_MESSAGE(); 
	END CATCH 
END;
-- Execute the stored procedure with the given Bike ID 'B004' 
BEGIN
    spDonorDetails('B004');
END;

-- QUESTION 6
-- Creating the function
CREATE FUNCTION fnTotalDonationValue (@DonorID INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @TotalValue DECIMAL(10, 2);

    -- Begin try block to handle potential errors
    BEGIN TRY
        -- Calculate the total donation value for the specified donor
        SELECT @TotalValue = SUM(D.VALUE)
        FROM Donations D
        WHERE D.DONOR_ID = @DonorID;

        -- Check if any value was found; if not, set it to 0
        IF @TotalValue IS NULL 
            SET @TotalValue = 0;
    END TRY
    -- Catch block to handle errors
    BEGIN CATCH
        -- Set the total value to 0 in case of an error
        SET @TotalValue = 0;

        -- Optionally print an error message
        PRINT 'Error: ' + ERROR_MESSAGE();
    END CATCH

    -- Return the total value
    RETURN @TotalValue;
END;
GO

-- Code to execute the function
DECLARE @DonorID INT = 1; -- Example donor ID
DECLARE @TotalDonationValue DECIMAL(10, 2);

-- Call the function and store the result
SET @TotalDonationValue = dbo.fnTotalDonationValue(@DonorID);

-- Print the total donation value
PRINT 'Total donation value for donor ID ' + CAST(@DonorID AS VARCHAR) + ': R' + CAST(@TotalDonationValue AS VARCHAR);

--QUESTION 7
-- Retrieve bike details along with donation value and status based on value range
SELECT 
    B.BIKE_ID,                               
    B.BIKE_TYPE,                             
    B.BIKE_MANUFACTURER,                     
    D.VALUE AS BIKE_VALUE,                    
        WHEN D.VALUE BETWEEN 0 AND 1500 THEN '*'          
        WHEN D.VALUE BETWEEN 1501 AND 3000 THEN '**'      
        WHEN D.VALUE > 3000 THEN '***'                    
    END AS STATUS                         
FROM 
    Bike B
-- Joining Donations table on Bike ID
JOIN 
    Donation D ON B.BIKE_ID = D.BIKE_ID;

--QUESTION 8  
-- Retrieve bike details with donation value, status, and row numbering
SELECT 
    ROW_NUMBER() OVER (ORDER BY B.BIKE_ID) AS RowNumber,  
    B.BIKE_ID,                                            
    B.BIKE_TYPE,                                      
    B.BIKE_MANUFACTURER,                                  
    D.VALUE AS BIKE_VALUE,                               
    CASE 
        WHEN D.VALUE BETWEEN 0 AND 1500 THEN CONCAT(D.VALUE, '*')     
        WHEN D.VALUE BETWEEN 1501 AND 3000 THEN CONCAT(D.VALUE, '**') 
        WHEN D.VALUE > 3000 THEN CONCAT(D.VALUE, '***')               
    END AS VALUE_STATUS                                 
FROM 
    Bike B
-- Joins Bikes and Donations tables on BIKE_ID
JOIN 
    Donation D ON B.BIKE_ID = D.BIKE_ID; 

-- QUESTION 9
-- QUESTION 9.1
-- Trigger to prevent deletions from Donations table 
CREATE TRIGGER trgPreventDeletion 
ON DONATION
INSTEAD OF DELETE 
AS 
BEGIN 
	PRINT 'Deletion is not allowed from the Donations table.'; 
	ROLLBACK TRANSACTION; 
END;
-- Deleting statement to test the trigger
DELETE FROM Donations WHERE DONOR_ID = 1;
-- QUESTION 9.2
-- Trigger to validate that the bike value is greater than 0 on updates
CREATE TRIGGER trgValidateBikeValue 
ON Donation 
AFTER UPDATE 
AS 
BEGIN
	-- Check if any updated value is less than or equal to 0
	IF EXISTS (SELECT * FROM inserted WHERE VALUE <= 0)
	BEGIN
		PRINT 'Error: Bike value must be greater than 0.';
        	ROLLBACK TRANSACTION;
	END
END;
GO

-- Update statement to test the trigger
UPDATE Donation
SET VALUE = -100 
WHERE DONOR_ID = 1;

