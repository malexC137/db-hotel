-- 1. Seleziona tutti gli ospiti che sono stati identificati con la carta di identità

SELECT * 
FROM `ospiti`
WHERE `document_type` = "CI";