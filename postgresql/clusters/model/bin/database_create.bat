call scripts.conf.bat %*
echo 'create database' %1%
mkdir %CLUSTER_INSTANCE2%/tablespaces/tbl_%1%



psql.exe -d postgres -f %DATABASES_DIR%\%DBNAME%/script/database.init.sql > %TRACES_DIR%/database.init_%F_DATETIME%.log 2>&1