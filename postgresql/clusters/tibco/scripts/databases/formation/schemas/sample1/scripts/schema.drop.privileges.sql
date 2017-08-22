/*==============================================================*/
/*  Projet        : Systeme d'echanges                          */
/*  Version       : Gaya V0.4 (Lot 0.4.1)                       */
/*  Modification  : Aucune                                      */
 /*=============================================================*/

SET search_path TO public;

REVOKE ALL PRIVILEGES ON sch_sample1.PERSONNE FROM sch_sample1;
REVOKE usage ON schema sch_sample1 FROM sch_sample1;
REVOKE CONNECT ON DATABASE bas_formation FROM sch_sample1;
DROP ROLE sch_sample1;