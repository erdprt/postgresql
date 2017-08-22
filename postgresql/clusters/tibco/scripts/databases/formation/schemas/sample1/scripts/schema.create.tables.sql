/*==============================================================*/
/*  Projet        : Systeme d'echanges                          */
/*  Version       : Gaya V0.4                                     */
/*  Modification  : Creation                                       */
 /*==============================================================*/

SET search_path TO sch_sample1;

create table PERSONNE (
   PER_ID               SERIAL,
   PER_LASTNAME         VARCHAR(100)         not null,
   PER_FIRSTNAME        VARCHAR(100)         not null,   
   PER_CIVILITY         VARCHAR(1)           not null,
   PER_NATIONALITY      VARCHAR(100)         not null,
   PER_STREET           VARCHAR(100)         not null,
   PER_CITY             VARCHAR(100)         not null,
   PER_ZIPCODE          VARCHAR(100)         not null,
   PER_DATE_CREATION    TIMESTAMP            NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PER_DATE_MODIFICATION TIMESTAMP           NOT NULL DEFAULT CURRENT_TIMESTAMP
);
