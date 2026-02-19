<?php

require_once "models/Incidencia.php";

class IncidenciaController {

    private $model;

    public function __construct($db) {
        $this->model = new Incidencia($db);
    }

    public function create($data) {
        return $this->model->insert(
            $data['titol'],
            $data['descripcio'],
            $data['usuari_id'],
            $data['estat_id']
        );
    }

    public function list() {
        return $this->model->getAll();
    }

    public function update($id, $estat_id) {
        return $this->model->updateEstat($id, $estat_id);
    }
}
