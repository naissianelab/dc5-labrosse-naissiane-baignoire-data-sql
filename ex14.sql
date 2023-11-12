-- Requête 14. Trouver les entités qui ont été actives pendant plus de 10 ans (en supposant que "lifetime" est en jours) :
SELECT *
FROM entity 
WHERE lifetime > 10 * 365.25