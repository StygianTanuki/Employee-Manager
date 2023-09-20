-- Either deletes or creates a database
DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

-- Creates a table with the department role, allowing organization into the database based on their roles when selected
CREATE TABLE department (
  id INT NOT NULL,
    depart_name VARCHAR(30),
    role_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id)
    REFERENCES role(id)
    ON DELETE SET NULL
);

-- Creates a role table that allows employees to be placed into their own salary range and what title they have
CREATE TABLE role (
    id INT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL (5,2),
    employee_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (employee_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);

-- Creates an employee table that allows for the first and last name of the employee as well as their manager if applicable
CREATE TABLE employee (
    id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    PRIMARY KEY (id)
    ON DELETE SET NULL  
);