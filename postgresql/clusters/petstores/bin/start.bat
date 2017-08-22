call scripts.conf.bat %*
pg_ctl.exe -D %PGDATA% -l %CLUSTER_LOGS%\journal_applicatif.log start