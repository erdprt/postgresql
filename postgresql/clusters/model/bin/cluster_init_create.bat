call scripts.conf.bat %*
echo 'create database' %1%

psql.exe -d postgres -f %CLUSTER_INSTANCE%\scripts\scripts\cluster.init.create.sql > %TRACES_DIR%\cluster.init.create_%F_DATETIME%.log 2>&1