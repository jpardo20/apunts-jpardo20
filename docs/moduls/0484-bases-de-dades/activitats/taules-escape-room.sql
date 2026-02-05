-- =========================================
-- CREACIÓ DE LA BASE DE DADES I LES TAULES
-- Projecte Escape Rooms - Model relacional
-- =========================================

CREATE DATABASE escape_room;

USE escape_room;

-- Primera part de creació de taules
-- Taules independents -> No depenen de cap taula. 
CREATE TABLE SEUS (
    id_seu INT AUTO_INCREMENT PRIMARY KEY,
    nom_seu VARCHAR(100),
    ciutat_seu VARCHAR(100),
    adressa_seu VARCHAR(200),
    telef_contacte_seu VARCHAR(20)
);

CREATE TABLE PARTICIPANTS (
    id_parti INT AUTO_INCREMENT PRIMARY KEY,
    nom_parti VARCHAR(100),
    cognom_parti VARCHAR(100),
    email_parti VARCHAR(150),
    data_naixement DATE
);

CREATE TABLE EQUIPS (
    id_equip INT AUTO_INCREMENT PRIMARY KEY,
    nom_equip VARCHAR(100),
    data_creacio DATE,
    qtat_parti INT
);

-- Segona part de creació de taules
-- Taules que depenen d’una altra taula. 

CREATE TABLE SALES (
    id_sala INT AUTO_INCREMENT PRIMARY KEY,
    nom_sala VARCHAR(100),
    tematica VARCHAR(50),
    dificultat ENUM('Fàcil', 'Mitjà', 'Difícil') NOT NULL,
    durada_max INT,
    max_parti INT,
    id_seu INT,
    FOREIGN KEY (id_seu) REFERENCES SEUS(id_seu)
);

-- Tercera part de creació de taules
-- Taules amb més dependències

CREATE TABLE EQUIPS_PARTICIPANTS (
    id_equip INT,
    id_parti INT,
    data_incorp DATE,
    PRIMARY KEY (id_equip, id_parti),
    FOREIGN KEY (id_equip) REFERENCES EQUIPS(id_equip),
    FOREIGN KEY (id_parti) REFERENCES PARTICIPANTS(id_parti)
);

CREATE TABLE RESERVES (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    data_hora_reserva DATETIME,
    estat_reserva ENUM('Realitzada', 'Cancel·lada', 'Pendent') NOT NULL,
    qtat_participants INT,
    id_sala INT,
    id_equip INT,
    FOREIGN KEY (id_sala) REFERENCES SALES(id_sala),
    FOREIGN KEY (id_equip) REFERENCES EQUIPS(id_equip)
);

CREATE TABLE RESULTATS (
    id_resultat INT AUTO_INCREMENT PRIMARY KEY,
    temps_utilitzat INT,
    exit_fracas BOOLEAN,
    puntuacio INT,
    qtat_pistes INT,
    id_reserva INT,
    FOREIGN KEY (id_reserva) REFERENCES RESERVES(id_reserva)
);

-- UNIQUE a la taula SEUS

ALTER TABLE SEUS
ADD CONSTRAINT uq_seu_nom_ciutat
UNIQUE (nom_seu, ciutat_seu);

-- UNIQUE a la taula SALES

ALTER TABLE SALES
ADD CONSTRAINT uq_sala_seu
UNIQUE (nom_sala, id_seu);

-- UNIQUE a la taula EQUIPS

ALTER TABLE EQUIPS
ADD CONSTRAINT uq_nom_equip
UNIQUE (nom_equip);

-- UNIQUE (id_sala, data_hora) a la taula RESERVES

ALTER TABLE RESERVES
ADD CONSTRAINT uq_reserva_sala_data
UNIQUE (id_sala, data_hora);


-- CHECK a SALES

ALTER TABLE SALES
ADD CONSTRAINT chk_durada_sala
CHECK (durada_max > 0),
ADD CONSTRAINT chk_max_participants
CHECK (max_parti > 0);

-- CHECK a RESERVES

ALTER TABLE RESERVES
ADD CONSTRAINT chk_num_participants
CHECK (qtat_participants > 0);

-- CHECK a RESULTATS

ALTER TABLE RESULTATS
ADD CONSTRAINT chk_puntuacio
CHECK (puntuacio >= 0);

-- A la taula SALES
-- ON DELETE RESTRICT
-- ON UPDATE CASCADE

ALTER TABLE SALES
ADD CONSTRAINT fk_sales_seus
FOREIGN KEY (id_seu)
REFERENCES SEUS(id_seu)
ON DELETE RESTRICT
ON UPDATE CASCADE;

-- A la taula EQUIPS
-- ON DELETE CASCADE

ALTER TABLE EQUIPS
ADD CONSTRAINT fk_id_equip
FOREIGN KEY (id_equip)
REFERENCES EQUIPS(id_equip)
ON DELETE CASCADE;
