-- DESCRIBE table_name;

-- corporate
-- insert data in employee table
INSERT INTO employee VALUES (
    100,'David','Wallace','1967-11-17','M', 250000,NULL,NULL
);
INSERT INTO employee VALUES (
    101,'Jan','Levinson','1965-06-23','F', 110000,100,NULL
);
INSERT INTO employee VALUES (
    102,'Micheal','Scott','1961-05-11','M', 75000,100,NULL
);
INSERT INTO employee VALUES (
    103,'Angela','Martin','1964-03-15','F', 63000,102,NULL
);
INSERT INTO employee VALUES (
    104,'Kelly','Kapoor','1971-06-25','F', 55000,102,NULL
);
INSERT INTO employee VALUES (
    105,'Stanley','Hudson','1980-02-05','M', 69000,102,NULL
);
INSERT INTO employee VALUES (
    106,'Josh','Porter','1958-02-19','M', 78000,100,NULL
);
INSERT INTO employee VALUES (
    107,'Andy','Bernard','1969-09-05','F', 65000,106,NULL
);
INSERT INTO employee VALUES (
    108,'Jim','Haipert','1973-10-01','M', 71000,106,NULL
);

-- insert data in employee table
INSERT INTO branch VALUES(
    1,'Corporate',100,'2006-02-19'
);
INSERT INTO branch VALUES(
    2,'Scranton',102,'1992-04-06'
);
INSERT INTO branch VALUES(
    3,'Stamford',106,'1998-02-13'
);

-- update employee branch_id
UPDATE employee SET branch_id=1 WHERE emp_id=100;
UPDATE employee SET branch_id=1 WHERE emp_id=101;
UPDATE employee SET branch_id=2 WHERE emp_id=102;
UPDATE employee SET branch_id=2 WHERE emp_id=103;
UPDATE employee SET branch_id=2 WHERE emp_id=104;
UPDATE employee SET branch_id=1 WHERE emp_id=105;
UPDATE employee SET branch_id=2 WHERE emp_id=106;
UPDATE employee SET branch_id=3 WHERE emp_id=107;
UPDATE employee SET branch_id=3 WHERE emp_id=108;
