<?php

require_once "config/database.php";
require_once "controllers/IncidenciaController.php";

$database = new Database();
$db = $database->getConnection();

$controller = new IncidenciaController($db);

$action = $_GET['action'] ?? null;

if ($action == "create" && $_SERVER["REQUEST_METHOD"] == "POST") {
    $controller->create($_POST);
    header("Location: index.php?action=list");
}

if ($action == "list") {
    $stmt = $controller->list();
    include "views/llistat_incidencies.php";
    exit;
}

include "views/form_incidencia.php";
