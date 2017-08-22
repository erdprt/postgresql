drop table SCHEMA_CUSTOMER.CUS_ADDRESS CASCADE;
drop table SCHEMA_CUSTOMER.CUS_PERSON CASCADE;
drop table SCHEMA_CUSTOMER.CUS_PRODUCT_PRICE CASCADE;
drop table SCHEMA_CUSTOMER.CUS_PRODUCT CASCADE;
drop table SCHEMA_CUSTOMER.CUS_CATEGORY CASCADE;

drop sequence SCHEMA_CUSTOMER.SEQ_PERSON;
drop sequence SCHEMA_CUSTOMER.SEQ_CATEGORY;
drop sequence SCHEMA_CUSTOMER.SEQ_PRODUCT;
drop sequence SCHEMA_CUSTOMER.SEQ_PRODUCT_PRICE;

drop schema SCHEMA_CUSTOMER CASCADE;

create schema SCHEMA_CUSTOMER;

create sequence SCHEMA_CUSTOMER.SEQ_STATUS increment by 1 start with 1 no cycle;

create table SCHEMA_CUSTOMER.CUS_STATUS (
  CUS_STA_ID            integer default nextval('SCHEMA_CUSTOMER.SEQ_STATUS'),
  CUS_STA_CODE          VARCHAR(10),
  CUS_STA_LABEL         VARCHAR(70),
  constraint cus_status_pk primary key(CUS_STA_ID)
);

create sequence SCHEMA_CUSTOMER.SEQ_PERSON increment by 1 start with 1 no cycle;

create table SCHEMA_CUSTOMER.CUS_PERSON (
  CUS_PER_ID            integer default nextval('SCHEMA_CUSTOMER.SEQ_PERSON'),
  CUS_PER_FIRSTNAME     varchar(60) not null,
  CUS_PER_LASTNAME      varchar(60),
  CUS_PER_MAIDENNAME    varchar(60),
  CUS_PER_CIVILITY      char(1),  
  CUS_PER_PHONE         varchar(10),
  CUS_PER_MOBILEPHONE   varchar(10),
  constraint cus_person_pk primary key (CUS_PER_ID) 
);

create table SCHEMA_CUSTOMER.CUS_EMPLOYEE (
  CUS_EMP_ID            integer not null,
  CUS_EMP_MONTHSALARY   real,
  CUS_EMP_STARTDATE     timestamp,
  CUS_EMP_ENDDATE       timestamp,
  CUS_EMP_STATUSID      integer,
  constraint cus_employee_pk primary key(CUS_EMP_ID),
	constraint cus_foreign_pk_employee_person FOREIGN KEY (CUS_EMP_ID) references SCHEMA_CUSTOMER.CUS_PERSON(CUS_PER_ID),
	constraint cus_foreign_pk_employee_status FOREIGN KEY (CUS_EMP_STATUSID) references SCHEMA_CUSTOMER.CUS_STATUS(CUS_STA_ID)
);

--CREATE UNIQUE INDEX customer_idx on SCHEMA_CUSTOMER.customer(id);
create table SCHEMA_CUSTOMER.CUS_ADDRESS (
  CUS_ADR_ID integer,
  CUS_ADR_STREETNAME    varchar(50),
  CUS_ADR_STREETNUMBER  varchar(10),
  CUS_ADR_ZIPCODE       varchar(10),
  CUS_ADR_CITY          varchar(50),
  constraint cus_address_pk primary key(CUS_ADR_ID),
	constraint cus_foreign_pk_address_person FOREIGN KEY (CUS_ADR_ID) references SCHEMA_CUSTOMER.CUS_PERSON(CUS_PER_ID)
);

create sequence SCHEMA_CUSTOMER.SEQ_CATEGORY increment by 1 start with 1 no cycle;

create table SCHEMA_CUSTOMER.CUS_CATEGORY (
	CUS_CAT_ID                 integer default nextval('SCHEMA_CUSTOMER.SEQ_CATEGORY'),
	CUS_CAT_LABEL              varchar(100) not null,
	CUS_CAT_SHORTLABEL         varchar(30),
	constraint cus_category_pk primary key (CUS_CAT_ID)
);

create sequence SCHEMA_CUSTOMER.SEQ_PRODUCT increment by 1 start with 1 no cycle;

create table SCHEMA_CUSTOMER.CUS_PRODUCT (
    CUS_PRD_ID            integer default nextval('SCHEMA_CUSTOMER.SEQ_PRODUCT'),
    CUS_PRD_LABEL         varchar(100) not null,
    CUS_PRD_SHORTLABEL    varchar(30) not null,
    CUS_PRD_CAT_ID        integer not null,    
	 constraint cus_product_pk primary key (CUS_PRD_ID),
	 constraint cus_foreign_pk_product_category FOREIGN KEY (CUS_PRD_CAT_ID) references SCHEMA_CUSTOMER.CUS_CATEGORY(CUS_CAT_ID)	
);

create sequence SCHEMA_CUSTOMER.SEQ_PRODUCT_PRICE increment by 1 start with 1 no cycle;

create table SCHEMA_CUSTOMER.CUS_PRODUCT_PRICE (
    CUS_PRD_PRICE_ID      integer default nextval('SCHEMA_CUSTOMER.SEQ_PRODUCT_PRICE'),
    CUS_PRD_PRICE_AMOUNT  real not null,
    CUS_PRD_PRICE_REMISE  real,
    CUS_PRD_PRICE_COMMENT VARCHAR(500),    
    CUS_PRD_START_DATE    timestamp not null,
    CUS_PRD_END_DATE      timestamp,
    CUS_PRD_PRD_ID        integer not null,
    constraint cus_product_price_pk primary key (CUS_PRD_PRICE_ID),
	  constraint cus_foreign_pk_product_product_price FOREIGN KEY (CUS_PRD_PRD_ID) references SCHEMA_CUSTOMER.CUS_PRODUCT(CUS_PRD_ID)	
);


INSERT INTO SCHEMA_CUSTOMER.CUS_CATEGORY (CUS_CAT_LABEL,CUS_CAT_SHORTLABEL) VALUES ('long category1','short category1');
INSERT INTO SCHEMA_CUSTOMER.CUS_CATEGORY (CUS_CAT_LABEL,CUS_CAT_SHORTLABEL) VALUES ('long category2','short category2');
INSERT INTO SCHEMA_CUSTOMER.CUS_CATEGORY (CUS_CAT_LABEL,CUS_CAT_SHORTLABEL) VALUES ('long category3','short category3');

INSERT INTO SCHEMA_CUSTOMER.CUS_PRODUCT (CUS_PRD_LABEL,CUS_PRD_SHORTLABEL,CUS_PRD_CAT_ID) VALUES ('long label product11','short label product11',1);
INSERT INTO SCHEMA_CUSTOMER.CUS_PRODUCT (CUS_PRD_LABEL,CUS_PRD_SHORTLABEL,CUS_PRD_CAT_ID) VALUES ('long label product12','short label product12',1);
INSERT INTO SCHEMA_CUSTOMER.CUS_PRODUCT (CUS_PRD_LABEL,CUS_PRD_SHORTLABEL,CUS_PRD_CAT_ID) VALUES ('long label product21','short label product13',1);
INSERT INTO SCHEMA_CUSTOMER.CUS_PRODUCT (CUS_PRD_LABEL,CUS_PRD_SHORTLABEL,CUS_PRD_CAT_ID) VALUES ('long label product31','short label product12',1);
INSERT INTO SCHEMA_CUSTOMER.CUS_PRODUCT (CUS_PRD_LABEL,CUS_PRD_SHORTLABEL,CUS_PRD_CAT_ID) VALUES ('long label product32','short label product13',1);

INSERT INTO SCHEMA_CUSTOMER.CUS_PRODUCT_PRICE (CUS_PRD_PRICE_AMOUNT,CUS_PRD_PRICE_REMISE,CUS_PRD_PRICE_COMMENT,CUS_PRD_START_DATE,CUS_PRD_END_DATE,CUS_PRD_PRD_ID) VALUES (200.00,0.00,'','2007-10-15','2007-11-15',1);
INSERT INTO SCHEMA_CUSTOMER.CUS_PRODUCT_PRICE (CUS_PRD_PRICE_AMOUNT,CUS_PRD_PRICE_REMISE,CUS_PRD_PRICE_COMMENT,CUS_PRD_START_DATE,CUS_PRD_END_DATE,CUS_PRD_PRD_ID) VALUES (200.00,15.00,'Remise exceptionnelle! durée limitée','2007-09-15','2007-10-09',1);
