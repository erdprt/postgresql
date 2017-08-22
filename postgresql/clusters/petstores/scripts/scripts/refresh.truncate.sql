SELECT 'SET SEARCH_PATH TO :SCHEMA_NAME;' AS LIGNE FROM information_schema.tables 
UNION
SELECT 'TRUNCATE ' || table_name || ' CASCADE;'  AS LIGNE FROM information_schema.tables
WHERE table_schema = :SCHEMA_NAME_WITH_QUOTE -- remplacer par le bon nom de schéma
ORDER BY LIGNE;