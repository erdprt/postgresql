SET search_path TO sch_billings;

-- DROP TABLES SECTION ---------------------------------------------------

DROP TABLE REF_PRODUCT_STATUS
;
DROP TABLE REF_PRODUCT
;
DROP TABLE REF_BILLING_STATUS
;
DROP TABLE TAB_BILLING
;
DROP TABLE TAB_ORDERS
;
DROP TABLE REF_INVENTORY
;
DROP TABLE TAB_METADONNEES
;
DROP TABLE TAB_ADDRESS
;
DROP TABLE REF_CATEGORY
;
DROP TABLE TAB_PRODUCT
;
DROP TABLE TAB_PERSON
;

-- DROP SEQUENCES SECTION --------------------------------------------------- 

DROP SEQUENCE REF_CATEGORY_SEQ
;
DROP SEQUENCE REF_PRODUCT_STATUS_SEQ
;
DROP SEQUENCE REF_PRODUCT_SEQ
;
DROP SEQUENCE TAB_BILLING_SEQ
;
DROP SEQUENCE TAB_ORDERS_SEQ
;
DROP SEQUENCE REF_INVENTORY_SEQ
;
DROP SEQUENCE TAB_PRODUCT_SEQ
;
DROP SEQUENCE TAB_ADDRESS_SEQ
;
DROP SEQUENCE TAB_PERSON_SEQ
;
DROP SEQUENCE TAB_METADONNEES_SEQ
;