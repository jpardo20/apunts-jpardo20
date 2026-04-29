-- =========================================================
-- SISTEMA DE RESERVES D'HOTEL
-- Base inicial per treballar procedures, functions i triggers
-- =========================================================

-- Esborrem la base de dades si existeix
DROP DATABASE IF EXISTS hotel_reserves;

-- Creem la base de dades
CREATE DATABASE hotel_reserves CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Ens situem a la base de dades
USE hotel_reserves;

-- -------------------------
-- 1. Taula de clients
-- -------------------------
CREATE TABLE CLIENTS (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(60) NOT NULL,
    cognoms_client VARCHAR(100) NOT NULL,
    email_client VARCHAR(120) NOT NULL UNIQUE,
    tel_client VARCHAR(20),
    dni_client VARCHAR(20) NOT NULL UNIQUE,
    data_alta DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    obser_client VARCHAR(255)
);

-- -------------------------
-- 2. Tipus d'habitació
-- -------------------------
CREATE TABLE TIPUS_HABITACIONS (
    id_tipus_hab INT AUTO_INCREMENT PRIMARY KEY,
    nom_tipus_hab VARCHAR(50) NOT NULL UNIQUE,
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
    id_habitacio INT AUTO_INCREMENT PRIMARY KEY,
    num_habitacio VARCHAR(10) NOT NULL UNIQUE,
    planta_habitacio INT NOT NULL,
    id_tipus_hab INT NOT NULL,
    estat_habitacio ENUM('disponible','ocupada','manteniment','fora_servei') NOT NULL DEFAULT 'disponible',
    obser_hab VARCHAR(255),
    FOREIGN KEY (id_tipus_hab) REFERENCES TIPUS_HABITACIONS(id_tipus_hab)
);

-- -------------------------
-- 4. Temporades
-- Percentatge sobre el preu base
-- Exemple: 1.20 = +20%
-- -------------------------
CREATE TABLE TEMPORADES (
    id_temporada INT AUTO_INCREMENT PRIMARY KEY,
    nom_temporada VARCHAR(50) NOT NULL UNIQUE,
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
    id_servei INT AUTO_INCREMENT PRIMARY KEY,
    nom_servei VARCHAR(80) NOT NULL UNIQUE,
    pr_unit_servei DECIMAL(10,2) NOT NULL,
    en_tipus_cobrament ENUM('per_estada','per_nit','per_persona') NOT NULL DEFAULT 'per_estada',
    esta_actiu BOOLEAN NOT NULL DEFAULT TRUE,
    CHECK (pr_unit_servei >= 0)
);

-- -------------------------
-- 6. Reserves
-- Alguns imports es guarden expressament per poder-los recalcular més endavant
-- i perquè els alumnes puguin estudiar possibles redundàncies controlades.
-- -------------------------
CREATE TABLE RESERVES (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_client INT NOT NULL,
    id_habitacio INT NOT NULL,
    data_entra_reserva DATE NOT NULL,
    data_surt_reserva DATE NOT NULL,
    adults_reserva INT NOT NULL DEFAULT 1,
    menors_reserva INT NOT NULL DEFAULT 0,
    en_estat_reserva ENUM('pendent','confirmada','checkin','checkout','cancel_lada') NOT NULL DEFAULT 'pendent',
    preu_nit_reserva DECIMAL(10,2),
    quantitat_nits_reserva INT,
    subtotal_estada_reserva DECIMAL(10,2),
    per_dte_reserva INT NOT NULL DEFAULT 0,
    imp_dte_reserva DECIMAL(10,2),
    imp_servei_reserva DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    per_iva_reserva INT NOT NULL DEFAULT 10,
    imp_iva_reserva DECIMAL(10,2),
    imp_tot_reserva DECIMAL(10,2),
    data_crea_reserva DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    obser_reserva VARCHAR(255),
    FOREIGN KEY (id_client) REFERENCES CLIENTS(id_client),
    FOREIGN KEY (id_habitacio) REFERENCES HABITACIONS(id_habitacio),
    CHECK (data_surt_reserva > data_entra_reserva),
    CHECK (adults_reserva > 0),
    CHECK (menors_reserva >= 0),
    CHECK (per_dte_reserva >= 0 AND per_dte_reserva <= 100),
    CHECK (per_iva_reserva >= 0 AND per_iva_reserva <= 100)
);

-- -------------------------
-- 7. Serveis associats a una reserva
-- -------------------------
CREATE TABLE RESERVA_SERVEIS (
    id_reserva_servei INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT NOT NULL,
    id_servei INT NOT NULL,
    quantitat INT NOT NULL DEFAULT 1,
    preu_unitari_aplicat DECIMAL(10,2) NOT NULL,
    subtotal_servei DECIMAL(10,2),
    FOREIGN KEY (id_reserva) REFERENCES RESERVES(id_reserva) ON DELETE CASCADE,
    FOREIGN KEY (id_servei) REFERENCES SERVEIS(id_servei),
    CHECK (quantitat > 0),
    CHECK (preu_unitari_aplicat >= 0)
);

-- -------------------------
-- 8. Pagaments
-- -------------------------
CREATE TABLE PAGAMENTS (
    id_paga INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT NOT NULL,
    data_paga DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    import_paga DECIMAL(10,2) NOT NULL,
    metode_paga ENUM('targeta','efectiu','transferencia','bizum') NOT NULL,
    concepte_paga VARCHAR(120) NOT NULL DEFAULT 'Pagament reserva',
    FOREIGN KEY (id_reserva) REFERENCES RESERVES(id_reserva) ON DELETE CASCADE,
    CHECK (import_paga > 0)
);

-- =========================================================
-- DADES D'EXEMPLE
-- =========================================================

INSERT INTO CLIENTS (nom_client, cognoms_client, email_client, tel_client, dni_client, obser_client) VALUES
('Joan', 'Serra Puig', 'joan.serra@gmail.com', '600111222', '72870739T', 'Client habitual'),
('Marta', 'Casals Riera', 'marta.casals@gmail.com', '600333444', '72185939W', NULL),
('Pau', 'Vidal Costa', 'pau.vidal@gmail.com', '600555666', '20719618E', 'Viatja amb menors'),
('Laia', 'Roca Torres', 'laia.roca@gmail.com', '600777888', '34316289J', NULL),
('Nil', 'Ferrer Soler', 'nil.ferrer@gmail.com', '600999000', '69256903Q', NULL);

INSERT INTO TIPUS_HABITACIONS (nom_tipus_hab, capacitat_hab, preu_base_nit_hab, te_bany_privat, te_balco, te_vistes_mar, desc_tipus_hab) VALUES
('Individual', 1, 55.00, TRUE, FALSE, FALSE, 'Habitació individual estàndard'),
('Doble', 2, 85.00, TRUE, FALSE, FALSE, 'Habitació doble estàndard'),
('Doble superior', 2, 110.00, TRUE, TRUE, FALSE, 'Habitació doble superior amb balcó'),
('Familiar', 4, 150.00, TRUE, TRUE, FALSE, 'Habitació familiar per a 4 persones'),
('Suite', 4, 220.00, TRUE, TRUE, TRUE, 'Suite amb vistes al mar');

INSERT INTO HABITACIONS (num_habitacio, planta_habitacio, id_tipus_hab, estat_habitacio, obser_hab) VALUES
('101', 1, 1, 'disponible', NULL),
('102', 1, 2, 'disponible', NULL),
('103', 1, 2, 'manteniment', 'Revisió aire condicionat'),
('201', 2, 3, 'disponible', NULL),
('202', 2, 4, 'disponible', NULL),
('301', 3, 5, 'disponible', 'Vistes al mar');

INSERT INTO TEMPORADES (nom_temporada, data_inici, data_fi, factor_preu) VALUES
('Baixa 2026 hivern', '2026-01-08', '2026-03-31', 0.90),
('Mitjana 2026 primavera', '2026-04-01', '2026-06-20', 1.00),
('Alta 2026 estiu', '2026-06-21', '2026-09-10', 1.25),
('Mitjana 2026 tardor', '2026-09-11', '2026-11-30', 1.00),
('Alta 2026 ponts i festes', '2026-12-01', '2026-12-31', 1.20);

INSERT INTO SERVEIS (nom_servei, pr_unit_servei, en_tipus_cobrament, esta_actiu) VALUES
('Esmorzar', 12.00, 'per_persona', TRUE),
('Parking', 15.00, 'per_nit', TRUE),
('Bressol', 8.00, 'per_nit', TRUE),
('Spa', 25.00, 'per_persona', TRUE),
('Late checkout', 20.00, 'per_estada', TRUE);

INSERT INTO RESERVES (
    id_client, id_habitacio, data_entra_reserva, data_surt_reserva, adults_reserva, menors_reserva, en_estat_reserva,
    preu_nit_reserva, quantitat_nits_reserva, subtotal_estada_reserva, per_dte_reserva,
    imp_dte_reserva, imp_servei_reserva, per_iva_reserva, imp_iva_reserva, imp_tot_reserva, obser_reserva
) VALUES
(1, 2, '2026-05-10', '2026-05-13', 2, 0, 'confirmada', 85.00, 3, 255.00, 0, 0.00, 24.00, 10, 27.90, 306.90, 'Cap de setmana llarg'),
(2, 4, '2026-07-02', '2026-07-07', 2, 1, 'pendent', 137.50, 5, 687.50, 10, 68.75, 75.00, 10, 69.38, 763.13, 'Reserva d’estiu'),
(3, 6, '2026-08-15', '2026-08-18', 2, 0, 'confirmada', 275.00, 3, 825.00, 5, 41.25, 50.00, 10, 83.38, 917.13, 'Aniversari'),
(4, 1, '2026-04-28', '2026-04-30', 1, 0, 'checkout', 55.00, 2, 110.00, 0, 0.00, 20.00, 10, 13.00, 143.00, NULL);

INSERT INTO RESERVA_SERVEIS (id_reserva, id_servei, quantitat, preu_unitari_aplicat, subtotal_servei) VALUES
(1, 1, 2, 12.00, 24.00),
(2, 2, 5, 15.00, 75.00),
(3, 4, 2, 25.00, 50.00),
(4, 5, 1, 20.00, 20.00);

INSERT INTO PAGAMENTS (id_reserva, import_paga, metode_paga, concepte_paga) VALUES
(1, 100.00, 'targeta', 'Paga i senyal'),
(1, 206.90, 'targeta', 'Pagament final'),
(3, 300.00, 'transferencia', 'Reserva confirmada'),
(4, 143.00, 'efectiu', 'Pagament complet');

-- =========================================================
-- VISTES D'UTILITAT
-- =========================================================

CREATE OR REPLACE VIEW v_resum_reserves AS
SELECT
    res.id_reserva,
    CONCAT(cli.nom_client, ' ', cli.cognoms_client) AS Client,
    hab.num_habitacio AS `Habitació`,
    tip_hab.nom_tipus_hab AS `Tipus`,
    res.data_entra_reserva AS `Data entr.`,
    res.data_surt_reserva AS `Data surt.`,
    res.quantitat_nits_reserva  AS `# nits`,
    res.en_estat_reserva  AS `Estat reserva`,
    res.imp_tot_reserva  AS `Import total`
FROM RESERVES res
JOIN CLIENTS cli ON res.id_client = cli.id_client
JOIN HABITACIONS hab ON res.id_habitacio = hab.id_habitacio
JOIN TIPUS_HABITACIONS tip_hab ON hab.id_tipus_hab = tip_hab.id_tipus_hab;

CREATE OR REPLACE VIEW v_pagaments_reserva AS
SELECT
    res.id_reserva,
    CONCAT(cli.nom_client, ' ', cli.cognoms_client) AS Client,
    res.imp_tot_reserva,
    COALESCE(SUM(paga.import_paga), 0) AS `Total pagat`,
    res.imp_tot_reserva - COALESCE(SUM(paga.import_paga), 0) AS `Pendent Pagament`
FROM RESERVES res
JOIN CLIENTS cli ON res.id_client = cli.id_client
LEFT JOIN PAGAMENTS paga ON res.id_reserva = paga.id_reserva
GROUP BY res.id_reserva, cli.nom_client, cli.cognoms_client, res.imp_tot_reserva;

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
-- SELECT   rs.id_reserva  AS `ID Reserva`,
--          srv.nom_servei AS `Servei`,
--          rs.quantitat  AS `Quantitat`,
--          rs.subtotal_servei  AS `Subtotal servei`
-- FROM     RESERVA_SERVEIS rs
-- JOIN     SERVEIS srv
--      ON rs.id_servei = srv.id_servei;

-- 4. Habitacions disponibles
-- SELECT   hab.num_habitacio AS `Num. hab.`,
--          tip_hab.nom_tipus_hab  AS `Tipus hab.`,
--          tip_hab.preu_base_nit_hab  AS `Preu base`
-- FROM     HABITACIONS hab
-- JOIN     TIPUS_HABITACIONS tip_hab
--      ON hab.id_tipus_hab = tip_hab.id_tipus_hab
-- WHERE    hab.estat_habitacio = 'disponible';
