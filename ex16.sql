-- Requête 16. Trouver le nombre d'entités par pays :
SELECT
    country.country AS pays,
    COUNT(entity.id) AS entity_count
FROM
    entity
LEFT JOIN
    address ON entity.id_address = address.id_address
LEFT JOIN
    country ON address.countries = country.code
GROUP BY
    country.country;