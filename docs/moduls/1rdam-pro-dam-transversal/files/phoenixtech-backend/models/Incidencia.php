<?php

class Incidencia {

    private $conn;
    private $table_name = "INCIDENCIES";

    public function __construct($db) {
        $this->conn = $db;
    }

    public function insert($titol, $descripcio, $usuari_id, $estat_id) {

        $query = "INSERT INTO " . $this->table_name . "
                  (titol, descripcio, usuari_id, estat_id)
                  VALUES (:titol, :descripcio, :usuari_id, :estat_id)";

        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":titol", $titol);
        $stmt->bindParam(":descripcio", $descripcio);
        $stmt->bindParam(":usuari_id", $usuari_id);
        $stmt->bindParam(":estat_id", $estat_id);

        return $stmt->execute();
    }

    public function getAll() {

        $query = "SELECT i.id, i.titol, u.nom AS usuari, e.nom AS estat
                  FROM INCIDENCIES i
                  JOIN USUARIS u ON i.usuari_id = u.id
                  JOIN ESTATS e ON i.estat_id = e.id";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    public function updateEstat($id, $estat_id) {

        $query = "UPDATE INCIDENCIES
                  SET estat_id = :estat_id
                  WHERE id = :id";

        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":estat_id", $estat_id);
        $stmt->bindParam(":id", $id);

        return $stmt->execute();
    }
}
