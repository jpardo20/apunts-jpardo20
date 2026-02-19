<?php

class Database {
    private $host = "db";
    private $db_name = "institut_app";
    private $username = "root";
    private $password = "profe";
    public $conn;

    public function getConnection() {

        $this->conn = null;

        try {
            $this->conn = new PDO(
                "mysql:host=" . $this->host . ";dbname=" . $this->db_name,
                $this->username,
                $this->password
            );
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        } catch(PDOException $exception) {
            echo "Error de connexió: " . $exception->getMessage();
        }

        return $this->conn;
    }
}
