-- Base de dades botiga


CREATE DATABASE IF NOT EXISTS botiga;
USE botiga;

-- Elimina taules (ordre segur per dependències)
DROP TABLE IF EXISTS DetallsComanda;
DROP TABLE IF EXISTS Comandes;
DROP TABLE IF EXISTS Productes;
DROP TABLE IF EXISTS Categories;
DROP TABLE IF EXISTS Transportistes;
DROP TABLE IF EXISTS Empleats;
DROP TABLE IF EXISTS Proveidors;
DROP TABLE IF EXISTS Clients;

-- =====================
-- Taules mestres
-- =====================

CREATE TABLE Clients (
  IdClient     INTEGER PRIMARY KEY,
  NomClient    VARCHAR(100) NOT NULL,
  NomContacte  VARCHAR(100),
  Adressa      VARCHAR(255),
  Ciutat       VARCHAR(100),
  CodiPostal   VARCHAR(20),
  Pais         VARCHAR(100)
);

CREATE TABLE Proveidors (
  IdProveidor   INTEGER PRIMARY KEY,
  NomProveidor  VARCHAR(100) NOT NULL,
  NomContacte   VARCHAR(100),
  Adressa        VARCHAR(255),
  Ciutat        VARCHAR(100),
  CodiPostal    VARCHAR(20),
  Pais          VARCHAR(100)
);

CREATE TABLE Empleats (
  IdEmpleat       INTEGER PRIMARY KEY,
  Cognom          VARCHAR(50) NOT NULL,
  Nom             VARCHAR(50) NOT NULL,
  DataNaixement   DATE,
  Foto            VARCHAR(255),
  Notes           TEXT
);

CREATE TABLE Transportistes (
  IdTransportista   INTEGER PRIMARY KEY,
  NomTransportista  VARCHAR(100) NOT NULL,
  Telefon           VARCHAR(50)
);

CREATE TABLE Categories (
  IdCategoria   INTEGER PRIMARY KEY,
  NomCategoria  VARCHAR(100) NOT NULL,
  Descripcio    TEXT
);

CREATE TABLE Productes (
  IdProducte    INTEGER PRIMARY KEY,
  NomProducte   VARCHAR(100) NOT NULL,
  IdProveidor   INTEGER NOT NULL,
  IdCategoria   INTEGER NOT NULL,
  Unitat        VARCHAR(100),
  Preu          DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (IdProveidor) REFERENCES Proveidors(IdProveidor),
  FOREIGN KEY (IdCategoria) REFERENCES Categories(IdCategoria)
);

CREATE TABLE Comandes (
  IdComanda        INTEGER PRIMARY KEY,
  IdClient         INTEGER NOT NULL,
  IdEmpleat        INTEGER NOT NULL,
  DataComanda      DATE,
  IdTransportista  INTEGER,
  FOREIGN KEY (IdClient)        REFERENCES Clients(IdClient),
  FOREIGN KEY (IdEmpleat)       REFERENCES Empleats(IdEmpleat),
  FOREIGN KEY (IdTransportista) REFERENCES Transportistes(IdTransportista)
);

CREATE TABLE DetallsComanda (
  IdDetallComanda  INTEGER PRIMARY KEY,
  IdComanda        INTEGER NOT NULL,
  IdProducte       INTEGER NOT NULL,
  Quantitat        INTEGER NOT NULL CHECK(Quantitat > 0),
  FOREIGN KEY (IdComanda)  REFERENCES Comandes(IdComanda),
  FOREIGN KEY (IdProducte) REFERENCES Productes(IdProducte)
);

-- Indexos útils (opcionals)
CREATE INDEX idx_comandes_client ON Comandes(IdClient);
CREATE INDEX idx_comandes_empleat ON Comandes(IdEmpleat);
CREATE INDEX idx_detallscomanda_comanda ON DetallsComanda(IdComanda);
CREATE INDEX idx_productes_categoria ON Productes(IdCategoria);
CREATE INDEX idx_productes_proveidor ON Productes(IdProveidor);

