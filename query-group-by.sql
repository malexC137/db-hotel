-- 1. Conta gli ospiti raggruppandoli per anno di nascita

SELECT YEAR(`date_of_birth`), COUNT(`date_of_birth`)
FROM `ospiti`
GROUP BY (YEAR(`date_of_birth`));

-- 2. Somma i prezzi dei pagamenti raggruppandoli per status

SELECT `status`, SUM(`price`)
FROM `pagamenti`
GROUP BY `status`;

-- 3. Conta quante volte è stata prenotata ogni stanza

SELECT `stanza_id`, COUNT(`stanza_id`)
FROM `prenotazioni`
GROUP BY(`stanza_id`);

-- 4. Fai una analisi per vedere se ci sono ore in cui le prenotazioni sono più frequenti

SELECT HOUR(`created_at`), COUNT(`created_at`)
FROM `prenotazioni`
GROUP BY (HOUR(`created_at`)) ;

-- 5. Quante prenotazioni ha fatto l’ospite che ha fatto più prenotazioni? (quante, non chi!)

SELECT `ospite_id`, COUNT(*) as `prenotazioni`
FROM `prenotazioni_has_ospiti`
GROUP BY `ospite_id`
ORDER BY `prenotazioni` DESC
LIMIT 1