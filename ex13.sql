-- Requête 13. Lister les intermédiaires et le nombre d'entités et d'officiers associés :
SELECT
    intermediary.name AS intermediary_name,
    COUNT(DISTINCT entity.id) AS entity_count,
    COUNT(DISTINCT officer.id) AS officer_count
FROM
    entity
INNER JOIN 
    assoc_inter_entity ON entity.id = assoc_inter_entity.entity
INNER JOIN 
    intermediary ON intermediary.id = assoc_inter_entity.inter
LEFT JOIN 
    assoc_inter_offi ON intermediary.id = assoc_inter_offi.inter
LEFT JOIN 
    officer ON officer.id = assoc_inter_offi.officer
GROUP BY 
    intermediary.name;