call scripts.conf.bat %*
echo 'create extensions for' %1%

psql.exe -d %DBNAME% -f %CLUSTER_INSTANCE%\scripts\scripts\extensions_create.sql > %TRACES_DIR%\extensions_create_%F_DATETIME%.log 2>&1