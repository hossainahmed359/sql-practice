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

-- NOTE: FOREIGN KEYs can not be initialized before perticular table creation

-- branch table
CREATE TABLE branch(
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  mgr_start_date DATE,
  FOREIGN KEY(mgr_id) 
  REFERENCES employee(emp_id) 
  ON DELETE SET NULL
);

-- declare foreign keys

-- super_id / superviser
ALTER TABLE employee
ADD FOREIGN KEY(super_id) 
REFERENCES employee(emp_id)
ON DELETE SET NULL;

-- branch_id
ALTER TABLE employee
ADD FOREIGN KEY(branch_id) 
REFERENCES branch(branch_id)
ON DELETE SET NULL;

-- client table
CREATE TABLE client(
  client_id INT PRIMARY KEY,
  client_name VARCHAR(40),
  branch_id INT,
  FOREIGN KEY(branch_id)
  REFERENCES branch(branch_id)
  ON DELETE SET NULL
);