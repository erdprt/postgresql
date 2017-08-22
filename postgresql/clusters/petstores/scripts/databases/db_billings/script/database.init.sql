CREATE USER user_billings WITH PASSWORD 'user_billings';
ALTER USER user_billings WITH SUPERUSER;

CREATE DATABASE db_billings OWNER user_billings;

GRANT CONNECT ON DATABASE db_billings TO user_billings;