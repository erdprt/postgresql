call cluster_create.bat
call start.bat

ping 0.0.0.0 -w 8000 > nul

call cluster_init_create.bat
call database_create.bat db_billings
call schema_create.bat db_billings sch_billings
call sequence_reinit.bat db_billings sch_billings