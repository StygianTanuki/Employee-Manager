-- Either deletes or creates a database
DROP DATABASE IF EXISTS tracker;
CREATE DATABASE tracker;

USE tracker;

-- Creates a table with the department role, allowing organization into the database based on their roles when selected
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
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
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name  VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT DEFAULT NULL,
    FOREIGN KEY (role_id)
    REFERENCES role(id),
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);