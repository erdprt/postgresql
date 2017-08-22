CREATE USER postgres WITH PASSWORD 'postgres';
ALTER USER postgres WITH SUPERUSER;

SET ROLE postgres;

CREATE ROLE ecriture
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE ROLE lecture
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
 CREATE ROLE dba
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;