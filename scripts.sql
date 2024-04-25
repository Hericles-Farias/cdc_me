use c##dbzuser

ALTER SESSION SET CURRENT_SCHEMA = c##dbzuser;
commit

CREATE TABLE employees (
    employee_id NUMBER(10) NOT NULL,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    phone_number VARCHAR2(15),
    hire_date DATE,
    job_id VARCHAR2(10),
    salary NUMBER(8,2),
    manager_id NUMBER(10),
    department_id NUMBER(10),
    CONSTRAINT employees_pk PRIMARY KEY (employee_id)
);

SELECT * FROM c##dbzuser.employees


SELECT * FROM USER_SYS_PRIVS; 
SELECT * FROM USER_TAB_PRIVS;
SELECT * FROM USER_ROLE_PRIVS;



select username as schema_name
from sys.dba_users
order by username;
SELECT table_name, owner from all_tables where owner like ('%c##dbzuser%');