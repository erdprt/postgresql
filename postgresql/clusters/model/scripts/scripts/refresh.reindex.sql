SELECT 'SET SEARCH_PATH TO ' || :SCHEMA_NAME_WITH_QUOTE || ';' AS LIGNE FROM information_schema.tables 
UNION
SELECT 'REINDEX TABLE ' || table_name || ';'  AS LIGNE FROM information_schema.tables
WHERE table_schema = :SCHEMA_NAME_WITH_QUOTE -- remplacer par le bon nom de schéma
ORDER BY LIGNE DESC;