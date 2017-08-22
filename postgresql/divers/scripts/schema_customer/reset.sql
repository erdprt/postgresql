drop table sch_customer.address;
--drop index address_idx;
drop table sch_customer.customer;
--drop index customer_idx;
drop sequence sch_customer.seq_customer;
drop schema sch_customer;

drop table SCH_CUSTOMER.CUS_ADDRESS CASCADE;
drop table SCH_CUSTOMER.CUS_CUSTOMER CASCADE;
drop table SCH_CUSTOMER.CUS_PRODUCT_PRICE CASCADE;
drop table SCH_CUSTOMER.CUS_PRODUCT CASCADE;
drop table SCH_CUSTOMER.CUS_CATEGORY CASCADE;

drop sequence SCH_CUSTOMER.SEQ_CUSTOMER;
drop sequence SCH_CUSTOMER.SEQ_CATEGORY;
drop sequence SCH_CUSTOMER.SEQ_PRODUCT;

drop schema SCH_CUSTOMER;
