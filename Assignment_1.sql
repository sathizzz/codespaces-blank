create database if not exists test;
use test;

-- Write a SQL query to insert at least 5 records into a table named "Employees." The table should have the following columns:
-- EmployeeID (Primary Key, Auto Increment)
-- FirstName
-- LastName
-- Email
-- Department

create table Employees(
    EmployeeID int primary key AUTO_INCREMENT,
    Firstname varchar(50),
    Lastname varchar(50),
    Email varchar(100) unique,
    Department varchar(100)
    );
    
Insert into Employees(Firstname,Lastname,Email,Department) values
('John','Corner','john123@gmail.com','Finance'),
('Sarah','Richards','sarah123@gmail.com','HR'),
('David','Miller','david123@gmail.com','IT'),
('Peter','yin','peter123@gmail.com','Sales'),
('Jerry','mey','jerry123@gmail.com','Marketing');

-- Update the email address of the employee with EmployeeID = 3 to "newemail@example.com".

update Employees set Email = 'newemail@example.com'
where EmployeeID = 3;

-- Delete the record of the employee with EmployeeID = 5 from the "Employees" table.

delete from Employees
where EmployeeID=5;

-- Write a SQL query to retrieve the details of all employees who belong to the "Marketing" department.

select * from Employees
where Department='Marketing';

-- Create a new table named "Orders" with the following columns:
-- OrderID (Primary Key, Auto Increment)
-- EmployeeID (Foreign Key referencing EmployeeID in the Employees table)
-- OrderDate
-- TotalAmount

create table Orders(
OrderID int primary key AUTO_INCREMENT,
EmployeeID int,
OrderDate date,
TotalAmount float,
foreign key (EmployeeID) references Employees(EmployeeID)
);

--  Insert at least 3 records into the "Orders" table, ensuring that each order is associated with an existing employee from the "Employees" table.

insert into Orders (EmployeeID, OrderDate, TotalAmount) values
(1, '2024-05-20', 120.00),
(2, '2024-05-21', 200.50),
(3, '2024-05-22', 65.75);