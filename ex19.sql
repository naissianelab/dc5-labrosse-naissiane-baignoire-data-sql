-- Requête 19. Lister les officiers qui ont des associations avec des entités et des intermédiaires :
SELECT
    officer.name AS officer_name,
    entity.name AS entity_name,
    intermediary.name AS inter_name
FROM
    officer
INNER JOIN 
    assoc_officer_entity ON officer.id = assoc_officer_entity.officer
INNER JOIN 
    entity ON entity.id = assoc_officer_entity.entity
INNER JOIN 
    assoc_officer_interm ON officer.id = assoc_officer_interm.officer
INNER JOIN 
    intermediary ON intermediary.id = assoc_officer_interm.interm