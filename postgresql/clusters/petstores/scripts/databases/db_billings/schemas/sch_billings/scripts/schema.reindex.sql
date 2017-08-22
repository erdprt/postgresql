 SET SEARCH_PATH TO sch_billings;
 REINDEX TABLE tab_product;
 REINDEX TABLE tab_person;
 REINDEX TABLE tab_orders;
 REINDEX TABLE tab_metadonnees;
 REINDEX TABLE tab_billing;
 REINDEX TABLE tab_address;
 REINDEX TABLE ref_product_status;
 REINDEX TABLE ref_product;
 REINDEX TABLE ref_inventory;
 REINDEX TABLE ref_category;
 REINDEX TABLE ref_billing_status;
 REINDEX TABLE batch_step_execution_context;
 REINDEX TABLE batch_step_execution;
 REINDEX TABLE batch_job_instance;
 REINDEX TABLE batch_job_execution_params;
 REINDEX TABLE batch_job_execution_context;
 REINDEX TABLE batch_job_execution;

