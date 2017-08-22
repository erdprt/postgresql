CREATE INDEX cus_person_lastname_idx ON SCHEMA_CUSTOMER.CUS_PERSON(CUS_PER_LASTNAME);

REINDEX INDEX cus_person_lastname_idx;