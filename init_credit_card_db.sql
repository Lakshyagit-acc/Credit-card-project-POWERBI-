-- ----------------------------------------------
-- SQL Initialization Script for Credit Card DB
-- Author: [Your Name]
-- Description: Creates 'ccdb' database, tables, and loads data from CSV
-- ------------------------------------------------

-- 0. Create database
-- (Run this separately if you're already connected to another DB)
CREATE DATABASE ccdb;

-- Connect to the newly created database
\c ccdb

-- 1. Create 'cc_detail' table
DROP TABLE IF EXISTS cc_detail;

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- 2. Create 'cust_detail' table
DROP TABLE IF EXISTS cust_detail;

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- 3. Import CSV Data
-- Note: Only works from `psql` CLI using `\copy`, not from pgAdmin or GUI

-- ✅ Replace the paths below with your actual CSV file locations

-- \copy cc_detail FROM 'D:/credit_card.csv' DELIMITER ',' CSV HEADER;
-- \copy cust_detail FROM 'D:/customer.csv' DELIMITER ',' CSV HEADER;

-- If using pgAdmin, right-click the tables and use "Import/Export" GUI tool instead.

-- 💡 Tip: Always verify encoding (UTF-8 recommended) and delimiter (`,`) before import.
