-- Requête 17. Lister les intermédiaires qui ont des associations avec plus de 5 entités :
SELECT
    intermediary.name AS intermediary_name,
    COUNT(entity.id) AS entity_count
FROM
    intermediary
INNER JOIN
    assoc_inter_entity ON intermediary.id = assoc_inter_entity.inter
INNER JOIN
    entity ON entity.id = assoc_inter_entity.entity
GROUP BY
    intermediary.name
HAVING
    COUNT(entity.id) > 5;