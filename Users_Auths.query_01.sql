-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);
-- Error Code: 1062. Duplicate entry 'B1' for key 'auth_names.PRIMARY'

INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('GUEST', 'B1');
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('ADMIN', 'B2');
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('MANGER', 'B3');

-- DELETE FROM table_name WHERE condition;
DELETE FROM auth_names 
WHERE UNIQUE_ID = 'B2';

DELETE FROM auth_names 
WHERE AUTH_NAME = 'MANGER';

-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;
UPDATE auth_names
SET UNIQUE_ID = 'B2'
WHERE UNIQUE_ID = 'B4'
;

SELECT *
FROM auth_names;