-- Requête 15. Trouver les entités et officiers associés qui ont une relation avant une certaine date (par exemple, le 1er janvier 2010) 
SELECT entity.name AS entity_name,
       officer.name AS officer_name,
       assoc_officer_entity.start_date
  FROM entity
       INNER JOIN
       assoc_officer_entity ON entity.id = assoc_officer_entity.entity
       INNER JOIN
       officer ON officer.id = assoc_officer_entity.officer
 WHERE start_date < '2010-01-01';