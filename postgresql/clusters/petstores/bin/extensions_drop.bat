call scripts.conf.bat %*
echo 'drop extensions for' %1%

psql.exe -d %DBNAME% -f %CLUSTER_INSTANCE%\scripts\scripts\extensions_drop.sql > %TRACES_DIR%\extensions_drop_%F_DATETIME%.log 2>&1