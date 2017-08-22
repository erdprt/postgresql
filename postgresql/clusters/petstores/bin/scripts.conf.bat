@ECHO off

SET PATH=C:\WINDOWS;C:\WINDOWS\system32

SET ROOT_DIR=C:\IT\DATABASES\postgresql
SET PATH=%PATH%;%ROOT_DIR%\base\pgsql\bin

SET CLUSTER_NAME=petstores
SET CLUSTER_ENCODING=UTF8
SET PGPORT=5432

REM les conventions de répertoires
REM Répertoire du cluster
SET CLUSTER_INSTANCE=%ROOT_DIR%\clusters\%CLUSTER_NAME%
REM Répertoire des log postgresql
SET CLUSTER_LOGS=%CLUSTER_INSTANCE%\logs
REM Répertoire des logs pour les scripts executés       
SET TRACES_DIR=%CLUSTER_INSTANCE%\traces
REM Répertoire des transactions
SET TRASACTIONS_DIR=%CLUSTER_INSTANCE%\transactions
REM Répertoire des tablespaces
SET TABLESPACES_DIR=%CLUSTER_INSTANCE%\tablespaces

SET PGDATA=%CLUSTER_INSTANCE%\cluster

SET DATABASES_DIR=%CLUSTER_INSTANCE%\scripts\databases

SET F_TIME=%TIME: =0%
SET F_DATETIME=%date:~-4%_%date:~3,2%_%date:~0,2%_%F_TIME:~0,2%_%F_TIME:~3,2%_%F_TIME:~6,2%

SET /A ARGS_COUNT=0    
FOR %%A in (%*) DO SET /A ARGS_COUNT+=1
ECHO %ARGS_COUNT%

SET DBNAME=postgres
SET SCHEMA=public

if %ARGS_COUNT% ==2 (
SET DBNAME=%1
SET SCHEMANAME=%2
)

if %ARGS_COUNT% ==1 (
SET DBNAME=%1
SET SCHEMANAME=public
)

@ECHO on