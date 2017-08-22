select setval('SCHEMA_CUSTOMER.SEQ_CUSTOMER',900000);
select setval('SCHEMA_CUSTOMER.SEQ_STATUS',8);
--alter sequence SCHEMA_CUSTOMER.SEQ_CUSTOMER restart with 900000;
--alter sequence SCHEMA_CUSTOMER.SEQ_STATUS restart with 8;
--alter sequence SCHEMA_CUSTOMER.SEQ_CATEGORY restart with 100000;
--alter sequence SCHEMA_CUSTOMER.SEQ_PRODUCT restart with 100000;
--alter sequence SCHEMA_CUSTOMER.SEQ_PRODUCT_PRICE restart with 100000;
COMMIT;

