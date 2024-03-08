-- Create a table named 'vehicle' with the following columns:
-- 'id' (BIGSERIAL, NOT NULL, PRIMARY KEY)
-- 'make' (VARCHAR(100), NOT NULL)
-- 'model' (VARCHAR(100), NOT NULL)
-- 'price' (NUMERIC(19,2), NOT NULL)
CREATE TABLE vehicle (
   id BIGSERIAL NOT NULL PRIMARY KEY,
   make VARCHAR(100) NOT NULL,
   model VARCHAR(100) NOT NULL,
   price NUMERIC(19,2) NOT NULL
);

-- Create a table named 'people' with the following columns:
-- 'id' (BIGSERIAL, NOT NULL, PRIMARY KEY)
-- 'first_name' (VARCHAR(50), NOT NULL)
-- 'last_name' (VARCHAR(50), NOT NULL)
-- 'gender' (VARCHAR(20), NOT NULL)
-- 'email' (VARCHAR(150))
-- 'date_of_birth' (DATE, NOT NULL)
-- 'country_of_birth' (VARCHAR(50), NOT NULL)
-- 'vehicle_id' (BIGINT, REFERENCES vehicle(id))
-- A UNIQUE constraint is also defined on the 'vehicle_id' column.
CREATE TABLE people (
   id BIGSERIAL NOT NULL PRIMARY KEY,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   gender VARCHAR(20) NOT NULL,
   email VARCHAR(150),
   date_of_birth DATE NOT NULL,
   country_of_birth VARCHAR(50) NOT NULL,
   vehicle_id BIGINT REFERENCES vehicle(id),
   UNIQUE(vehicle_id)
);

-- Insert data into the 'people' table with the following values:
-- (Rudra, Saha, Male, xxx@gmail.com, 2024-12-10, India)
-- (Rudrani, Sinha, Female, NULL, 2021-12-01, India)
-- (Vikram, Aditya, Male, xnxx@gmail.com, 2025-12-12, India)
INSERT INTO people (first_name,
                   last_name,
                   gender,
                   email,
                   date_of_birth,
                   country_of_birth)
VALUES ('Rudra',
       'Saha',
       'Male',
       'xxx@gmail.com',
       '2024-12-10',
       'India');

INSERT INTO people (first_name,
                   last_name,
                   gender,
                   email,
                   date_of_birth,
                   country_of_birth)
VALUES ('Rudrani',
       'Sinha',
       'Female',
       NULL,
       '2021-12-01',
       'India');

INSERT INTO people (first_name,
                   last_name,
                   gender,
                   email,
                   date_of_birth,
                   country_of_birth)
VALUES ('Vikram',
       'Aditya',
       'Male',
       'xnxx@gmail.com',
       '2025-12-12',
       'India');

-- Insert data into the 'vehicle' table with the following values:
-- (Land Rover, Sterling, 87665.38)
-- (GMC, Acadia, 17662.69)
INSERT INTO vehicle (make,
                   model,
                   price)
VALUES ('Land Rover' ,
       'Sterling',
       '87665.38');

INSERT INTO vehicle (make,
                   model,
                   price)
VALUES ('GMC' ,
       'Acadia',
       '17662.69');