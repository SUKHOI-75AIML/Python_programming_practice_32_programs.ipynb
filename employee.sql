CREATE TABLE Department (
    department VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Employee (
    emp_id      INT PRIMARY KEY,
    emp_name    VARCHAR(50) NOT NULL,
    department  VARCHAR(50),
    salary      DECIMAL(10,2),
    city        VARCHAR(50),
    FOREIGN KEY (department) REFERENCES Department(department)
);

INSERT INTO Department (department) VALUES
('HR'), ('IT'), ('Finance'), ('Sales');

INSERT INTO Employee (emp_id, emp_name, department, salary, city) VALUES
(1, 'Ammukutty',   'IT',      75000, 'Bekur'),
(2, 'Appukuttan',  'HR',      45000, 'Uppala'),
(3, 'Satheesan',  'Finance', 60000, 'Kaikamba'),
(4, 'Snehil',  'IT',      52000, 'Mannanguzhi'),
(5, 'Surendran', 'Sales',   48000, 'Kannattipaara'),
(6, 'Ashraf', 'Finance', 90000, 'Kubanoor'),
(7, 'Mammutty',  'Sales',   55000, 'Hosangadi'),
(8, 'Mohan',  'HR',      38000, 'Kundachakatte');

SELECT * FROM Employee;

SELECT DISTINCT department FROM Employee;

SELECT * FROM Employee WHERE salary > 50000;

SELECT * FROM Employee WHERE department = 'IT';

SELECT * FROM Employee WHERE salary BETWEEN 40000 AND 60000;

SELECT * FROM Employee WHERE department IN ('IT', 'Finance');

SELECT * FROM Employee ORDER BY salary DESC;

SELECT * FROM Employee WHERE department = 'IT' AND salary > 50000;

SELECT * FROM Employee WHERE department = 'HR' OR department = 'Sales';

SELECT * FROM Employee WHERE NOT department = 'Finance';
