-- Generated departments for the employees
INSERT INTO department (name)
VALUES  ("Sales"),
        ("Engineering"),
        ("Finance"),
        ("Legal");

-- Different roles with their salary and department ID
INSERT INTO role (title, salary, department_id)
VALUES  ("Sales Lead", 100000, 1),
        ("Salesperson", 80000, 1),
        ("Lead Engineer", 150000, 2),
        ("Software Engineer", 120000, 2),
        ("Account Mangaer", 160000, 3),
        ("Accountant", 125000, 3),
        ("Legal Team Lead", 250000, 4),
        ("Lawyer",190000, 4);

-- All the employees listed as well as their role and manager ID
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ("John", "Doe", 1, null ),
        ("Mickey", "Chan", 2, 1),
        ("Ashley", "Rodriguez", 3, null ),
        ("Kevin", "Tupik", 4, 3),
        ("Kunal", "Singh", 5, null),
        ("Malia", "Brown", 6, 5),
        ("Sarah", "Lourd", 7,null ),
        ("Tom", "Allen", 8, 7),
        ("Sam", "Kash",1, 3);