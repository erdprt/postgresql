/*==============================================================*/
/*  Projet        : Systeme d'échanges                          */
/*  Version       : Gaya V0.3                                   */
/*  Modification  : Creation                                    */
 /*==============================================================*/

SET search_path TO sch_sample1;

SELECT SETVAL('MTD_METADONNEES_S', (SELECT coalesce(MAX(MTD_ID),MAX(MTD_ID), 1) FROM MTD_METADONNEES));
