-- =========================================================
-- SISTEMA DE RESERVES D'HOTEL
-- Base inicial per treballar procedures, functions i triggers
-- =========================================================

-- Esborrem la base de dades si existeix
DROP DATABASE IF EXISTS hotel_reserves;

-- Creeem la base de dades
CREATE DATABASE hotel_reserves CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Ens situem a la base de dades
USE hotel_reserves;

-- -------------------------
-- 1. Taula de clients
-- -------------------------
CREATE TABLE CLIENTS (
    id_cli INT AUTO_INCREMENT PRIMARY KEY,
    nom_cli VARCHAR(60) NOT NULL,
    cognoms_cli VARCHAR(100) NOT NULL,
    email_cli VARCHAR(120) NOT NULL UNIQUE,
    tel_cli VARCHAR(20),
    dni_cli VARCHAR(20) NOT NULL UNIQUE,
    data_alta DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    obser_cli VARCHAR(255)
);

-- -------------------------
-- 2. Tipus d'habitació
-- -------------------------
CREATE TABLE TIPUS_HABITACIONS (
    id_tipus INT AUTO_INCREMENT PRIMARY KEY,
    nom_tipus VARCHAR(50) NOT NULL UNIQUE,
    capacitat_hab INT NOT NULL,
    preu_base_nit_hab DECIMAL(10,2) NOT NULL,
    te_bany_privat BOOLEAN NOT NULL DEFAULT TRUE,
    te_balco BOOLEAN NOT NULL DEFAULT FALSE,
    te_vistes_mar BOOLEAN NOT NULL DEFAULT FALSE,
    desc_tipus_hab VARCHAR(255),
    CHECK (capacitat_hab > 0),
    CHECK (preu_base_nit_hab > 0)
);

-- -------------------------
-- 3. Habitacions
-- -------------------------
CREATE TABLE HABITACIONS (
    id_habi INT AUTO_INCREMENT PRIMARY KEY,
    num_habi VARCHAR(10) NOT NULL UNIQUE,
    planta_habi INT NOT NULL,
    id_tipus INT NOT NULL,
    estat_habi ENUM('disponible','ocupada','manteniment','fora_servei') NOT NULL DEFAULT 'disponible',
    obser_hab VARCHAR(255),
    FOREIGN KEY (id_tipus) REFERENCES TIPUS_HABITACIONS(id_tipus)
);

-- -------------------------
-- 4. Temporades
-- Percentatge sobre el preu base
-- Exemple: 1.20 = +20%
-- -------------------------
CREATE TABLE TEMPORADES (
    id_temp INT AUTO_INCREMENT PRIMARY KEY,
    nom_temp VARCHAR(50) NOT NULL UNIQUE,
    data_inici DATE NOT NULL,
    data_fi DATE NOT NULL,
    factor_preu DECIMAL(4,2) NOT NULL DEFAULT 1.00,
    CHECK (data_fi >= data_inici),
    CHECK (factor_preu > 0)
);

-- -------------------------
-- 5. Serveis extres
-- -------------------------
CREATE TABLE SERVEIS (
    id_serv INT AUTO_INCREMENT PRIMARY KEY,
    nom_serv VARCHAR(80) NOT NULL UNIQUE,
    pr_unit_serv DECIMAL(10,2) NOT NULL,
    en_tipus_cobra ENUM('per_estada','per_nit','per_persona') NOT NULL DEFAULT 'per_estada',
    esta_actiu BOOLEAN NOT NULL DEFAULT TRUE,
    CHECK (pr_unit_serv >= 0)
);

-- -------------------------
-- 6. Reserves
-- Alguns imports es guarden expressament per poder-los recalcular més endavant
-- i perquè els alumnes puguin estudiar possibles redundàncies controlades.
-- -------------------------
CREATE TABLE RESERVES (
    id_resv INT AUTO_INCREMENT PRIMARY KEY,
    id_cli INT NOT NULL,
    id_habi INT NOT NULL,
    data_entra_resv DATE NOT NULL,
    data_surt_resv DATE NOT NULL,
    adults_resv INT NOT NULL DEFAULT 1,
    menors_resv INT NOT NULL DEFAULT 0,
    en_estat_resv ENUM('pendent','confirmada','checkin','checkout','cancel·lada') NOT NULL DEFAULT 'pendent',
    preu_nit_resv DECIMAL(10,2),
    qtat_nits_resv INT,
    subtotal_estada_resv DECIMAL(10,2),
    per_dte_resv INT NOT NULL DEFAULT 0,
    imp_dte_resv DECIMAL(10,2),
    imp_serv DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    per_iva_resv INT NOT NULL DEFAULT 10,
    imp_iva_resv DECIMAL(10,2),
    imp_tot_resv DECIMAL(10,2),
    data_crea_resv DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    obser_resv VARCHAR(255),
    FOREIGN KEY (id_cli) REFERENCES CLIENTS(id_cli),
    FOREIGN KEY (id_habi) REFERENCES HABITACIONS(id_habi),
    CHECK (data_surt_resv > data_entra_resv),
    CHECK (adults_resv > 0),
    CHECK (menors_resv >= 0),
    CHECK (per_dte_resv >= 0 AND per_dte_resv <= 100),
    CHECK (per_iva_resv >= 0 AND per_iva_resv <= 100)
);

-- -------------------------
-- 7. Serveis associats a una reserva
-- -------------------------
CREATE TABLE RESERVA_SERVEIS (
    id_reserva_serv INT AUTO_INCREMENT PRIMARY KEY,
    id_resv INT NOT NULL,
    id_serv INT NOT NULL,
    quantitat INT NOT NULL DEFAULT 1,
    preu_unitari_aplicat DECIMAL(10,2) NOT NULL,
    subtotal_servei DECIMAL(10,2),
    FOREIGN KEY (id_resv) REFERENCES RESERVES(id_resv) ON DELETE CASCADE,
    FOREIGN KEY (id_serv) REFERENCES SERVEIS(id_serv),
    CHECK (quantitat > 0),
    CHECK (preu_unitari_aplicat >= 0)
);

-- -------------------------
-- 8. Pagaments
-- -------------------------
CREATE TABLE PAGAMENTS (
    id_paga INT AUTO_INCREMENT PRIMARY KEY,
    id_resv INT NOT NULL,
    data_paga DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    import_paga DECIMAL(10,2) NOT NULL,
    metode_paga ENUM('targeta','efectiu','transferencia','bizum') NOT NULL,
    concepte_paga VARCHAR(120) NOT NULL DEFAULT 'Pagament reserva',
    FOREIGN KEY (id_resv) REFERENCES RESERVES(id_resv) ON DELETE CASCADE,
    CHECK (import_paga > 0)
);

-- =========================================================
-- DADES D'EXEMPLE
-- =========================================================

INSERT INTO CLIENTS (nom_cli, cognoms_cli, email_cli, tel_cli, dni_cli, obser_cli) VALUES
('Joan', 'Serra Puig', 'joan.serra@gmail.com', '600111222', '72870739T', 'Client habitual'),
('Marta', 'Casals Riera', 'marta.casals@gmail.com', '600333444', '72185939W', NULL),
('Pau', 'Vidal Costa', 'pau.vidal@gmail.com', '600555666', '20719618E', 'Viatja amb menors_resv'),
('Laia', 'Roca Torres', 'laia.roca@gmail.com', '600777888', '34316289J', NULL),
('Nil', 'Ferrer Soler', 'nil.ferrer@gmail.com', '600999000', '69256903Q', NULL);

INSERT INTO TIPUS_HABITACIONS (nom_tipus, capacitat_hab, preu_base_nit_hab, te_bany_privat, te_balco, te_vistes_mar, desc_tipus_hab) VALUES
('Individual', 1, 55.00, TRUE, FALSE, FALSE, 'Habitació individual estàndard'),
('Doble', 2, 85.00, TRUE, FALSE, FALSE, 'Habitació doble estàndard'),
('Doble superior', 2, 110.00, TRUE, TRUE, FALSE, 'Habitació doble superior amb balcó'),
('Familiar', 4, 150.00, TRUE, TRUE, FALSE, 'Habitació familiar per a 4 persones'),
('Suite', 4, 220.00, TRUE, TRUE, TRUE, 'Suite amb vistes al mar');

INSERT INTO HABITACIONS (num_habi, planta_habi, id_tipus, estat_habi, obser_hab) VALUES
('101', 1, 1, 'disponible', NULL),
('102', 1, 2, 'disponible', NULL),
('103', 1, 2, 'manteniment', 'Revisió aire condicionat'),
('201', 2, 3, 'disponible', NULL),
('202', 2, 4, 'disponible', NULL),
('301', 3, 5, 'disponible', 'Vistes al mar');

INSERT INTO TEMPORADES (nom_temp, data_inici, data_fi, factor_preu) VALUES
('Baixa 2026 hivern', '2026-01-08', '2026-03-31', 0.90),
('Mitjana 2026 primavera', '2026-04-01', '2026-06-20', 1.00),
('Alta 2026 estiu', '2026-06-21', '2026-09-10', 1.25),
('Mitjana 2026 tardor', '2026-09-11', '2026-11-30', 1.00),
('Alta 2026 ponts i festes', '2026-12-01', '2026-12-31', 1.20);

INSERT INTO SERVEIS (nom_serv, pr_unit_serv, en_tipus_cobra, esta_actiu) VALUES
('Esmorzar', 12.00, 'per_persona', TRUE),
('Parking', 15.00, 'per_nit', TRUE),
('Bressol', 8.00, 'per_nit', TRUE),
('Spa', 25.00, 'per_persona', TRUE),
('Late checkout', 20.00, 'per_estada', TRUE);

INSERT INTO RESERVES (
    id_cli, id_habi, data_entra_resv, data_surt_resv, adults_resv, menors_resv, en_estat_resv,
    preu_nit_resv, qtat_nits_resv, subtotal_estada_resv, per_dte_resv,
    imp_dte_resv, imp_serv, per_iva_resv, imp_iva_resv, imp_tot_resv, obser_resv
) VALUES
(1, 2, '2026-05-10', '2026-05-13', 2, 0, 'confirmada', 85.00, 3, 255.00, 0, 0.00, 24.00, 10, 27.90, 306.90, 'Cap de setmana llarg'),
(2, 4, '2026-07-02', '2026-07-07', 2, 1, 'pendent', 137.50, 5, 687.50, 10, 68.75, 75.00, 10, 69.38, 763.13, 'Reserva d’estiu'),
(3, 6, '2026-08-15', '2026-08-18', 2, 0, 'confirmada', 275.00, 3, 825.00, 5, 41.25, 50.00, 10, 83.38, 917.13, 'Aniversari'),
(4, 1, '2026-04-28', '2026-04-30', 1, 0, 'checkout', 55.00, 2, 110.00, 0, 0.00, 20.00, 10, 13.00, 143.00, NULL);

INSERT INTO RESERVA_SERVEIS (id_resv, id_serv, quantitat, preu_unitari_aplicat, subtotal_servei) VALUES
(1, 1, 2, 12.00, 24.00),
(2, 2, 5, 15.00, 75.00),
(3, 4, 2, 25.00, 50.00),
(4, 5, 1, 20.00, 20.00);

INSERT INTO PAGAMENTS (id_resv, import_paga, metode_paga, concepte_paga) VALUES
(1, 100.00, 'targeta', 'Paga i senyal'),
(1, 206.90, 'targeta', 'Pagament final'),
(3, 300.00, 'transferencia', 'Reserva confirmada'),
(4, 143.00, 'efectiu', 'Pagament complet');

-- =========================================================
-- VISTES D'UTILITAT
-- =========================================================

CREATE OR REPLACE VIEW v_resum_reserves AS
SELECT
    res.id_resv,
    CONCAT(cli.nom_cli, ' ', cli.cognoms_cli) AS Client,
    hab.num_habi AS "Habitació",
    tip_hab.nom_tipus,
    res.data_entra_resv,
    res.data_surt_resv,
    res.qtat_nits_resv,
    res.en_estat_resv,
    res.imp_tot_resv
FROM RESERVES res
JOIN CLIENTS cli ON res.id_cli = cli.id_cli
JOIN HABITACIONS hab ON res.id_habi = hab.id_habi
JOIN TIPUS_HABITACIONS tip_hab ON hab.id_tipus = tip_hab.id_tipus;

CREATE OR REPLACE VIEW v_pagaments_reserva AS
SELECT
    res.id_resv,
    CONCAT(cli.nom_cli, ' ', cli.cognoms_cli) AS Client,
    res.imp_tot_resv,
    COALESCE(SUM(paga.import_paga), 0) AS "Total pagat",
    res.imp_tot_resv - COALESCE(SUM(paga.import_paga), 0) AS "Pendent Pagament"
FROM RESERVES res
JOIN CLIENTS cli ON res.id_cli = cli.id_cli
LEFT JOIN PAGAMENTS paga ON res.id_resv = paga.id_resv
GROUP BY res.id_resv, client, res.imp_tot_resv;

-- =========================================================
-- CONSULTES DE COMPROVACIÓ RÀPIDA
-- =========================================================

-- 1. Resum general de reserves
-- SELECT   *
-- FROM     v_resum_reserves;

-- 2. Pagaments pendents
-- SELECT   *
-- FROM     v_pagaments_reserva;

-- 3. Serveis associats a cada reserva
-- SELECT   rs.id_resv  AS "ID Reserva",
--          srv.nom_serv AS "Servei",
--          rs.quantitat  AS "Quatitat",
--          rs.subtotal_servei  AS "Subtotal servei",
-- FROM     RESERVA_SERVEIS rs
-- JOIN     SERVEIS srv
--      ON rs.id_serv = srv.id_serv;

-- 4. Habitacions disponibles
-- SELECT   hab.num_habi AS "Num. hab.",
--          tip_hab.nom_tipus  AS "Tipus hab.",,
--          tip_hab.preu_base_nit_hab  AS "Preu base",
-- FROM     HABITACIONS hab
-- JOIN     TIPUS_HABITACIONS tip_hab
--      ON hab.id_tipus = tip_hab.id_tipus
-- WHERE    hab.estat_habi = 'disponible';
