-- Requête 18. Trouver les entités qui ont des associations avec des officiers de plus de 2 pays différents :
SELECT
    entity.name AS entity_name,
    officer.name AS officer_name,
    COUNT(DISTINCT officer.country_id) AS number_of_countries
FROM
    entity
INNER JOIN
    assoc_officer_entity AS assoc ON entity.id = assoc.entity
INNER JOIN
    officer ON assoc.officer = officer.id
INNER JOIN
    country ON officer.country_id = country.id
GROUP BY
    entity.name
HAVING
    COUNT(DISTINCT officer.country_id) > 2;