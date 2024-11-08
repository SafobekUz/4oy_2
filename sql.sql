--1
CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department_id INT,
    email VARCHAR(100),
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE Projects (
    id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE Tasks (
    id INT PRIMARY KEY,
    description VARCHAR(255),
    project_id INT,
    employee_id INT,
    FOREIGN KEY (project_id) REFERENCES Projects(id) ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES Employees(id) ON DELETE SET NULL
);

--3
UPDATE Employees
SET position = 'Senior Developer'
WHERE id = 1;

UPDATE Projects
SET title = 'New Project Title'
WHERE id = 2;

--4
DELETE FROM Projects
WHERE id = 3;

DELETE FROM Employees
WHERE id = 4;
