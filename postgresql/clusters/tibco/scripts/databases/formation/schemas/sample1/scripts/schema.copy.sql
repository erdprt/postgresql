-- intialisation pour creer les tables dans le schema d�sir�: petstore1 dans le cas courant
SET search_path TO sch_sample1; 

COPY PERSONNE FROM 'G:/postgresql/clusters/sodifrance/scripts/databases/se/schemas/sample1/datas/personne.csv' WITH DELIMITER as ';' CSV HEADER;
