-- Find name of all employees who have
-- sold over 30,000 to single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id 
    FROM works_with
    WHERE total_sales > 30000
    -- Output:
    -- emp_id
    -- 102
    -- 105
    -- 105
    -- 105
);

-- Output:
-- first_name	last_name
-- Micheal	    Scott


-- Find all clients who are handled by the branch
-- that Micheal Scott manages
-- Assume you know Micheal's ID
SELECT client.client_name
FROM CLIENT
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
);
