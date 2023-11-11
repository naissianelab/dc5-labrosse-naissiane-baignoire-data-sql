-- Requête 12. Trouver le nombre d'entités associées à chaque intermédiaire :
SELECT COUNT(entity.name) AS entity_count, intermediary.name AS intermediary_name
FROM entity
INNER JOIN 
    assoc_inter_entity ON entity.id = assoc_inter_entity.entity
INNER JOIN 
    intermediary ON intermediary.id = assoc_inter_entity.inter
GROUP BY intermediary.name