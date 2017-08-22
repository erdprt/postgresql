/*==============================================================*/
/*  Projet        : Systeme d'echanges                          */
/*  Version       : Gaya V0.4 (Lot 0.4.1)                       */
/*  Modification  : Creation                                      */
 /*=============================================================*/

SET search_path TO public;

CREATE ROLE sch_sample1 WITH LOGIN PASSWORD 'sch_sample1';
GRANT CONNECT ON DATABASE bas_formation TO sch_sample1;
GRANT usage ON schema sch_sample1 TO sch_sample1;
GRANT SELECT, UPDATE, DELETE, INSERT ON sch_sample1.PERSONNE TO sch_sample1;
GRANT SELECT, UPDATE ON sch_sample1.PERSONNE TO sch_sample1;
GRANT SELECT, UPDATE ON sch_sample1.PERSONNE TO sch_sample1;