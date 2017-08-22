call schema_drop.bat db_billings sch_billings
call database_drop.bat db_billings
call cluster_init_remove.bat

call stop.bat
ping 0.0.0.0 -w 8000 > nul
call clean.bat