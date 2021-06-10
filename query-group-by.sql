-- 1. Conta gli ospiti raggruppandoli per anno di nascita

SELECT YEAR(`date_of_birth`), COUNT(`date_of_birth`)
FROM `ospiti`
GROUP BY `date_of_birth`; -- NOT WORKING PROPERLY

-- 2. Somma i prezzi dei pagamenti raggruppandoli per status

SELECT `status`, SUM(`price`)
FROM `pagamenti`
GROUP BY `status`;

-- 3. Conta quante volte è stata prenotata ogni stanza

SELECT `stanza_id`, COUNT(`stanza_id`)
FROM `prenotazioni`
GROUP BY(`stanza_id`);

-- 4. Fai una analisi per vedere se ci sono ore in cui le prenotazioni sono più frequenti



-- 5. Quante prenotazioni ha fatto l’ospite che ha fatto più prenotazioni? (quante, non chi!)