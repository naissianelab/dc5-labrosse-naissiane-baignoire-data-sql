-- Sélectionner tous les officiers d'un pays spécifique (le pays avec l'ID 5) :
SELECT *
FROM officer
WHERE country_id IN (5)