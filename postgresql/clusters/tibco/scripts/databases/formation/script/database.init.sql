CREATE USER user_formation WITH PASSWORD 'user_formation';
ALTER user user_formation WITH SUPERUSER;
CREATE TABLESPACE tbl_formation LOCATION 'F:/postgresql/clusters/tibco/tablespaces/tbl_formation';
ALTER TABLESPACE tbl_formation OWNER TO user_formation;
CREATE DATABASE bas_formation OWNER user_formation TABLESPACE tbl_formation;