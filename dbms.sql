CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DateOfBirth DATE,
    Address VARCHAR(255),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Manager (
     DepartmentID INT FOREIGN KEY,
     ManagerID INT PRIMARY KEY,
     EmployeeID INT FOREIGN KEY
);

    
CREATE TABLE Employee_Salary (
    DepartmentID  INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    Salary DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);




-- Inserting values into the Employee table
INSERT INTO Employee (EmployeeID, Name, DateOfBirth, Address, Email, PhoneNumber, DepartmentID)
VALUES
    (101, 'John Doe', '1990-05-15', '123 Main St, Cityville', 'john.doe@example.com', '123-456-7890', 001), -- EmployeeID 1 belonging to DepartmentID 1
    (102, 'Jane Smith', '1985-08-20', '456 Elm St, Townsville', 'jane.smith@example.com', '987-654-3210', 002), -- EmployeeID 2 belonging to DepartmentID 1
    (103, 'Michael Johnson', '1988-12-10', '789 Oak St, Villagetown', 'michael.johnson@example.com', '555-123-4567', 003), -- EmployeeID 3 belonging to DepartmentID 2
    (104, 'Emily Brown', '1992-03-25', '101 Pine St, Hamletville', 'emily.brown@example.com', '777-888-9999', 002), -- EmployeeID 4 belonging to DepartmentID 2
    (105, 'David Wilson', '1995-06-30', '202 Cedar St, Woodsville', 'david.wilson@example.com', '111-222-3333', 003); -- EmployeeID 5 belonging to DepartmentID 3


-- Inserting values into the Department table
INSERT INTO Department (DepartmentID, DepartmentName, ManagerID)
VALUES
    (001, 'Sales', 101),(002, 'Marketing', 102),(003, 'Finance', 103);

-- Inserting values into the Employee_Salary table
INSERT INTO Employee_Salary (EmployeeID, DepartmentName, Salary)
VALUES
    (101, 'Sales', 80000.00),
    (102, 'Marketing', 70000.00),
    (103, 'Finance', 60000.00),
    (104, 'Marketing', 75000.00),
    (105, 'Finance', 65000.00);

--  Inserting values into the Manager table
INSERT INTO Manager (  DepartmentID INT ,ManagerID INT ,EmployeeID INT )
VALUES
    (001,111,101),
    (002,112,102),
    (003,113,103);



      


