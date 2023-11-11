-- Trouver tous les officiers et intermédiaires qui ont une association :
SELECT intermediary.name AS inter_name, officer.name AS officer_name
FROM assoc_inter_offi
INNER JOIN intermediary 
    ON intermediary.id = assoc_inter_offi.inter
INNER JOIN officer 
    ON officer.id = assoc_inter_offi.officer