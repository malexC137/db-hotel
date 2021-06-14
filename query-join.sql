-- 1. Come si chiamano gli ospiti che hanno fatto più di due prenotazioni? 

SELECT `name`, `lastname`, COUNT(`ospite_id`) as `prenotazioni`
FROM `prenotazioni_has_ospiti`
INNER JOIN `ospiti`
ON `ospiti`.`id` = `prenotazioni_has_ospiti`.`ospite_id`
GROUP BY `ospite_id`
HAVING COUNT(`prenotazioni`) > 2

-- 2. Stampare tutti gli ospiti per ogni prenotazione

 SELECT `name`, `lastname`, `prenotazione_id`
   FROM `ospiti`
INNER JOIN `prenotazioni_has_ospiti`
        ON `ospiti`.`id` = `prenotazioni_has_ospiti`.`ospite_id`;

-- 3. Stampare Nome, Cognome, Prezzo e Pagante per tutte le prenotazioni fatte a Maggio 2018

SELECT `name`, `lastname`, `price`, `pagante_id`
 FROM `paganti`
 INNER JOIN `pagamenti`
 ON `paganti`.`id` = `pagamenti`.`prenotazione_id`
 WHERE MONTH(`pagamenti`.`created_at`) = 05
 AND YEAR(`pagamenti`.`created_at`) = 2018;

-- 4. Fai la somma di tutti i prezzi delle prenotazioni per le stanze del primo piano

SELECT SUM(`price`)
FROM `pagamenti` 
INNER JOIN `prenotazioni` 
ON `pagamenti`.`prenotazione_id` = `prenotazioni`.`id`
INNER JOIN `stanze`
ON `prenotazioni`.`stanza_id` = `stanze`.`id`
WHERE `stanze`.`floor` = 1;

-- 5. Prendi i dati di fatturazione per la prenotazione con id=7 

SELECT `name`, `lastname`, `document_type`, `date_of_birth`, `document_number` 
FROM `ospiti` 
INNER JOIN `prenotazioni_has_ospiti` 
ON `ospiti`.`id` = `prenotazioni_has_ospiti`.`ospite_id` 
WHERE `prenotazioni_has_ospiti`.`prenotazione_id` = 7;

-- 6. Le stanze sono state tutte prenotate al meno una volta? (Visualizzare le stanze non ancora prenotate)

SELECT * 
FROM `prenotazioni`
LEFT JOIN `stanze`
ON `stanze`.`id` = `prenotazioni`.`stanza_id`
WHERE `stanze`.`id` IS NULL