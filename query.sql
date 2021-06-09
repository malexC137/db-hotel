-- 1. Seleziona tutti gli ospiti che sono stati identificati con la carta di identità

SELECT * 
FROM `ospiti`
WHERE `document_type` = "CI";

-- 2. Seleziona tutti gli ospiti che sono nati dopo il 1988

SELECT * 
FROM `ospiti`
WHERE `date_of_birth` > "1988-12-31";