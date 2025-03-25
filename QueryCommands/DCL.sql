DCL

GRANT SELECT ON table_name TO user_name;

GRANT INSERT, UPDATE ON table_name TO user_name;

GRANT ALL PRIVILEGES ON table_name TO user_name;

GRANT SELECT, INSERT ON database_name.table_name TO 'user'@'host';

GRANT EXECUTE ON PROCEDURE procedure_name TO user_name;

REVOKE SELECT ON table_name FROM user_name;

REVOKE ALL PRIVILEGES ON table_name FROM user_name;

REVOKE EXECUTE ON FUNCTION function_name FROM user_name;

GRANT SELECT ON table_name TO role_name;

CREATE USER 'user_name'@'host' IDENTIFIED BY 'password';

DROP USER 'user_name'@'host';

ALTER USER 'user_name'@'host' IDENTIFIED BY 'new_password';