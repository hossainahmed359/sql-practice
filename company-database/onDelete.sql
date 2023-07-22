-- on delete set null
-- only column value ggets deleted in branch
DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch;
-- Output:
-- branch_id	branch_name	mgr_id	mgr_start_date
-- 1	        Corporate	100	    2006-02-19
-- 2	        Scranton	NULL	1992-04-06
-- 3	        Stamford	106	    1998-02-13

-- on delete cascade
-- enitere row gets deleted in branch_supplier
DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier;
-- Output:
-- branch_id	supplier_name	supplier_type
-- 3	        Hammer Mill	    Paper
-- 3	        Patriot Paper	Paper
-- 3	        Stamford Lables	Custom Forms
-- 3	        Uni-ball	    Writing Utensils