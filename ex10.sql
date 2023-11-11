-- Trouver tous les officiers qui n'ont pas d'URL associée :
SELECT *
FROM officer
WHERE officer.URL IS NULL