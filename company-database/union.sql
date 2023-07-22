-- Find a list of employees and branch name
-- N.B: Union tables needs to be selected
-- with exact same number of columns
SELECT first_name AS employee_name
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- Find a list of all clients & branch suppliers names
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, burnch_supplier.branch_id
FROM burnch_supplier;