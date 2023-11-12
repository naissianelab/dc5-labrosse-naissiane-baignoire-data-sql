-- Lister les entités et leurs pays d'origine :
SELECT entity.name, country.country
FROM entity
INNER JOIN address 
  ON entity.id_address = address.id_address
INNER JOIN country 
  ON address.countries = country.code