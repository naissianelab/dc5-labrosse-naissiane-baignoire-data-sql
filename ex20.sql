-- Requête 20. Trouver les entités sans officiers associés :
SELECT entity.name AS entity_name, officer.name AS officer_name
FROM entity
LEFT JOIN assoc_officer_entity
    ON entity.id = assoc_officer_entity.entity
LEFT JOIN officer 
    ON officer.id = assoc_officer_entity.officer
WHERE
    assoc_officer_entity.officer IS NULL;