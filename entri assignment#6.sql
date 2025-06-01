-- 1. Create the database
CREATE DATABASE World;
USE World;

-- 2. Create Country table
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population BIGINT,
    Area INT
);

-- 3. Create Persons table
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population BIGINT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

-- 4. Insert 10 rows into Country
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'India', 1393000000, 3287000),
(3, 'UK', 67000000, 243000),
(4, 'Canada', 38000000, 9985000),
(5, 'Australia', 26000000, 7692000),
(6, 'France', 67000000, 551695),
(7, 'Germany', 83000000, 357000),
(8, 'Italy', 60000000, 301000),
(9, 'Mexico', 128000000, 1964000),
(10, 'Spain', 47000000, 505990);

-- 5. Insert 10 rows into Persons
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 30000, 4.2, 1, 'USA'),
(2, 'Jane', 'Smith', 25000, 3.8, 2, 'India'),
(3, 'Aaliya', 'Khan', 20000, 4.5, 3, 'UK'),
(4, 'Emily', 'Clark', 15000, 4.0, 4, 'Canada'),
(5, 'Liam', 'Brown', 35000, 4.7, 5, 'Australia'),
(6, 'Noah', 'Wilson', 28000, 3.9, 6, 'France'),
(7, 'Emma', 'Taylor', 10000, 4.6, 7, 'Germany'),
(8, 'Olivia', 'Martinez', 22000, 4.1, 8, 'Italy'),
(9, 'Ava', 'Lopez', 18000, 4.3, 9, 'Mexico'),
(10, 'Sophia', 'Lee', 26000, 4.9, 10, 'Spain');

-- 1. INNER JOIN: Returns records with matching Country_Id
SELECT P.Id, P.Fname, P.Lname, C.Country_name, P.Rating
FROM Persons P
INNER JOIN Country C ON P.Country_Id = C.Id;

-- 2. LEFT JOIN: All records from Persons and matching Country records
SELECT P.Id, P.Fname, P.Lname, C.Country_name, P.Rating
FROM Persons P
LEFT JOIN Country C ON P.Country_Id = C.Id;

-- 3. RIGHT JOIN: All records from Country and matching Persons
SELECT P.Id, P.Fname, P.Lname, C.Country_name, P.Rating
FROM Persons P
RIGHT JOIN Country C ON P.Country_Id = C.Id;

-- 4. Distinct country names from both tables (use UNION for distinct)
SELECT Country_name FROM Country
UNION
SELECT Country_name FROM Persons;

-- 5. All country names from both tables (with duplicates - use UNION ALL)
SELECT Country_name FROM Country
UNION ALL
SELECT Country_name FROM Persons;

-- 6. Round ratings to nearest integer
SELECT Id, Fname, Lname, ROUND(Rating) AS Rounded_Rating
FROM Persons;