SET search_path TO sch_billings;

COPY REF_BILLING_STATUS FROM 'F:/postgresql/clusters/petstores/scripts/databases/db_billings/schemas/sch_billings/datas/REF_BILLING_STATUS.csv' WITH DELIMITER as ';' CSV HEADER;
COPY REF_PRODUCT_STATUS FROM 'F:/postgresql/clusters/petstores/scripts/databases/db_billings/schemas/sch_billings/datas/REF_PRODUCT_STATUS.csv' WITH DELIMITER as ';' CSV HEADER;
COPY REF_CATEGORY FROM 'F:/postgresql/clusters/petstores/scripts/databases/db_billings/schemas/sch_billings/datas/REF_CATEGORY.csv' WITH DELIMITER as ';' CSV HEADER;
COPY REF_PRODUCT FROM 'F:/postgresql/clusters/petstores/scripts/databases/db_billings/schemas/sch_billings/datas/REF_PRODUCT.csv' WITH DELIMITER as ';' CSV HEADER;
COPY REF_INVENTORY FROM 'F:/postgresql/clusters/petstores/scripts/databases/db_billings/schemas/sch_billings/datas/REF_INVENTORY.csv' WITH DELIMITER as ';' CSV HEADER;