-- Locates and shows the departments available
SELECT * FROM department

-- Shows the roles from the datebase
SELECT role.id, role.title, department.name AS department, role.salary FROM role LEFT JOIN department ON department.id = role.department_id  

-- Shows all the listed employees by their name, title, department, and manager if applicable as well as their role
SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name, role.salary, employee.manager FROM employee INNER JOIN role ON employee.role_id = role.id INNER JOIN department ON department.id = role.department_id

-- Creates a new department
INSERT INTO department (name)
VALUES(?)

-- Creates a new role with the name, salary of the role, and their department ID
INSERT INTO role (title, salary, department_id)
VALUES(?)

-- Creates a new employee with their first name, last name, role, and the manager if applicable
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES(?)

-- Allows an update into the database to show if an employee gets promoted or demoted
UPDATE employee SET role_id = ? WHERE id = ?