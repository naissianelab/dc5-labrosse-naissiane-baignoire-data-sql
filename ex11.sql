-- Lister les entités et leurs intermédiaires associés :
SELECT entity.name AS entity_name, intermediary.name AS intermediary_name
FROM entity
INNER JOIN assoc_inter_entity
    ON entity.id = assoc_inter_entity.entity
INNER JOIN intermediary 
    ON intermediary.id = assoc_inter_entity.inter