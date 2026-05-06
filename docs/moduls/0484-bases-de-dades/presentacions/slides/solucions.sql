-- =========================================================
-- FASE 3 - SOLUCIONS
-- Consolidació amb consultes
-- =========================================================

-- ---------------------------------------------------------
-- TASCA 1
-- Mostrar totes les reserves amb informació de pagament
-- ---------------------------------------------------------

SELECT *
FROM v_pagaments_reserva;


-- ---------------------------------------------------------
-- TASCA 2
-- Mostrar només reserves amb pagaments pendents
-- (provoca error expressament)
-- ---------------------------------------------------------

SELECT *
FROM v_pagaments_reserva
WHERE pendent > 0;


-- ---------------------------------------------------------
-- TASCA 3
-- Solucionar l’error
-- ---------------------------------------------------------

SELECT *
FROM v_pagaments_reserva
WHERE `Pendent Pagament` > 0;


-- ---------------------------------------------------------
-- TASCA 4
-- Mostrar només reserves completament pagades
-- ---------------------------------------------------------

SELECT *
FROM v_pagaments_reserva
WHERE `Pendent Pagament` = 0;


-- ---------------------------------------------------------
-- TASCA 5
-- Ordenar per import pendent (descendent)
-- ---------------------------------------------------------

SELECT *
FROM v_pagaments_reserva
WHERE `Pendent Pagament` > 0
ORDER BY `Pendent Pagament` DESC;


-- ---------------------------------------------------------
-- TASCA 6
-- Mostrar reserves confirmades amb pendent
-- ---------------------------------------------------------

SELECT v.*
FROM v_pagaments_reserva v
JOIN RESERVES r
    ON v.id_reserva = r.id_reserva
WHERE r.en_estat_reserva = 'confirmada'
AND `Pendent Pagament` > 0;


-- ---------------------------------------------------------
-- TASCA 7
-- Mostrar el client que deu més diners
-- ---------------------------------------------------------

SELECT *
FROM v_pagaments_reserva
WHERE `Pendent Pagament` > 0
ORDER BY `Pendent Pagament` DESC
LIMIT 1;


-- ---------------------------------------------------------
-- TASCA 8
-- Mostrar reserves amb més de 3 nits
-- ---------------------------------------------------------

SELECT *
FROM v_resum_reserves
WHERE `# nits` > 3;


-- ---------------------------------------------------------
-- TASCA 9
-- Mostrar reserves en estat "pendent"
-- ---------------------------------------------------------

SELECT *
FROM v_resum_reserves
WHERE `Estat reserva` = 'pendent';


-- ---------------------------------------------------------
-- TASCA 10
-- Mostrar reserves amb import superior a 500€
-- ---------------------------------------------------------

SELECT *
FROM v_resum_reserves
WHERE `Import total` > 500;


-- ---------------------------------------------------------
-- TASCA 11
-- Mostrar totes les reserves ordenades per data d’entrada
-- ---------------------------------------------------------

SELECT *
FROM v_resum_reserves
ORDER BY `Data entr.` ASC;


-- ---------------------------------------------------------
-- TASCA 12
-- Mostrar només el nom del client i el pendent
-- ---------------------------------------------------------

SELECT
    Client,
    `Pendent Pagament`
FROM v_pagaments_reserva;


-- ---------------------------------------------------------
-- TASCA 13
-- Mostrar el total de reserves amb pendent
-- ---------------------------------------------------------

SELECT COUNT(*) AS total_reserves_pendent
FROM v_pagaments_reserva
WHERE `Pendent Pagament` > 0;


-- ---------------------------------------------------------
-- TASCA 14
-- Mostrar el total de diners pendents
-- ---------------------------------------------------------

SELECT SUM(`Pendent Pagament`) AS total_pendent
FROM v_pagaments_reserva;


-- ---------------------------------------------------------
-- TASCA 15
-- Quin client ha pagat més diners en total?
-- ---------------------------------------------------------

SELECT
    Client,
    SUM(`Total pagat`) AS total_pagat
FROM v_pagaments_reserva
GROUP BY Client
ORDER BY total_pagat DESC
LIMIT 1;