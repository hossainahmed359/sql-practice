-- schema

-- employee table
CREATE TABLE employee(
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_date DATE,
  sex VARCHAR(1),
  salary INT,
  super_id INT, -- foreign key
  branch_id INT -- foreign key
);