call scripts.conf.bat %*
echo 'drop cluster'
RMDIR /S /Q %CLUSTER_INSTANCE2%\cluster
RMDIR /S /Q %CLUSTER_INSTANCE2%\logs
RMDIR /S /Q %CLUSTER_INSTANCE2%\transactions
RMDIR /S /Q %CLUSTER_INSTANCE2%\tablespaces
