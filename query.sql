-- 1. Seleziona tutti gli ospiti che sono stati identificati con la carta di identità

SELECT * 
FROM `ospiti`
WHERE `document_type` = "CI";

-- 2. Seleziona tutti gli ospiti che sono nati dopo il 1988

SELECT * 
FROM `ospiti`
WHERE `date_of_birth` > "1988-12-31";

-- 4. Seleziona tutti gli ospiti il cui nome inizia con la D

SELECT *
FROM `ospiti`
WHERE `name` LIKE "D%";

-- 5. Calcola il totale incassato degli ordini accepted

SELECT SUM(`price`)
FROM `pagamenti`
WHERE `status` = "accepted";

-- 6. Qual è il prezzo massimo pagato?

SELECT MAX(`price`)
FROM `pagamenti`;

-- 7. Seleziona gli ospiti riconosciuti con patente e nati nel 1975

SELECT *
FROM `ospiti`
WHERE `document_type` = "Driver License"
AND `date_of_birth` LIKE "1975%";