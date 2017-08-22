call scripts.conf.bat %*
echo 'create cluster'
rem initdb.exe -E %CLUSTER_ENCODING% -X %CLUSTER_INSTANCE%/transactions

mkdir %PGDATA%
mkdir %CLUSTER_LOGS%
mkdir %TRACES_DIR%
mkdir %TRASACTIONS_DIR%
mkdir %TABLESPACES_DIR%
 
initdb.exe -X %TRASACTIONS_DIR%