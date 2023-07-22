INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- Find all the branches and the names of their manager:

-- INNER JOIN
SELECT employee.emp_id, employee.first_name, employee.branch_id, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id =  branch.mgr_id;

-- Output:
-- emp_id	first_name	branch_id	branch_name
-- 100	    David	    1	        Corporate
-- 102	    Micheal	    2	        Scranton
-- 106	    Josh	    2	        Stamford

-- LEFT JOIN
SELECT employee.emp_id, employee.first_name, employee.branch_id, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id =  branch.mgr_id;

-- Output:
-- emp_id	first_name	branch_id	branch_name
-- 100	    David	    1	        Corporate
-- 101	    Jan	        1	        NULL
-- 102	    Micheal	    2	        Scranton
-- 103	    Angela	    2	        NULL
-- 104	    Kelly	    2	        NULL
-- 105	    Stanley	    1	        NULL
-- 106	    Josh	    2	        Stamford
-- 107	    Andy	    3	        NULL
-- 108	    Jim	        3	        NULL

-- RIGHT JOIN
SELECT employee.emp_id, employee.first_name, employee.branch_id, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id =  branch.mgr_id;

-- Output:
-- emp_id	first_name	branch_id	branch_name
-- 100	    David	    1	        Corporate
-- 102	    Micheal	    2	        Scranton
-- 106	    Josh	    2	        Stamford
-- NULL	    NULL	    NULL	    Buffalo

-- FULL OUTER JOIN