call scripts.conf.bat %*
echo 'drop database' %1%

psql.exe -d postgres -f %DATABASES_DIR%\%DBNAME%/script/database.drop.sql > %TRACES_DIR%\database.drop_%F_DATETIME%.log 2>&1
rd  %CLUSTER_INSTANCE2%\tablespaces\tbl_%1%