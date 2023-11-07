-- Lister les entités et leurs pays d'origine :
SELECT entity.name, address.countries
FROM entity
INNER JOIN address 
  ON entity.id_address = address.id_address
WHERE address.address IS NOT NULL AND address.address != ''
