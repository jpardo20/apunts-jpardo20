# PhoenixTech – App Base PHP (MVC Lleuger)

## 🎯 Objectiu

Aplicació base en PHP seguint model **MVC simplificat**, perquè:

- L’app sigui comuna per tots els grups.
- Cada grup hagi d’adaptar-la al seu propi model de dades.
- No puguin copiar literalment SQL.
- Hagin d’entendre la seva pròpia base de dades.

---

# 🏗 Arquitectura proposada

```
/
├── index.php
├── config/
│   ├── database.php
│   └── model_map.php
├── controllers/
│   └── IncidenciaController.php
├── models/
│   └── Incidencia.php
├── views/
│   ├── layout.php
│   └── incidencies/
│       ├── list.php
│       ├── create.php
│       └── show.php
```

---

# 📌 Filosofia

- MVC lleuger, didàctic.
- Sense frameworks.
- Sense Composer.
- Sense màgia.
- Clar i comprensible per DAM1.

---

# 📂 config/database.php

```php
<?php

class Database {

    public static function connect() {
        return new PDO(
            "mysql:host=localhost;dbname=phoenixtech;charset=utf8",
            "root",
            "",
            [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
            ]
        );
    }
}
```

---

# 📂 config/model_map.php

⚠ Aquest fitxer l’ha d’adaptar cada grup segons la seva BD.

```php
<?php

return [
    'incidencia_table' => 'INCIDENCIA',
    'incidencia_id' => 'idIncidencia',
    'incidencia_estat' => 'estat_incidencia',
    'incidencia_prioritat' => 'prioritat',

    'tecnic_table' => 'TECNIC',
    'tecnic_id' => 'idTecnic',
    'tecnic_nom' => 'nom_tecnic',

    'client_table' => 'CLIENT',
    'client_id' => 'idClient',
    'client_nom' => 'nom_client'
];
```

---

# 📂 models/Incidencia.php

```php
<?php

require_once __DIR__ . '/../config/database.php';

class Incidencia {

    private $db;
    private $map;

    public function __construct() {
        $this->db = Database::connect();
        $this->map = require __DIR__ . '/../config/model_map.php';
    }

    public function getAll() {
        $table = $this->map['incidencia_table'];
        $stmt = $this->db->query("SELECT * FROM $table");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function find($id) {
        $table = $this->map['incidencia_table'];
        $idField = $this->map['incidencia_id'];

        $stmt = $this->db->prepare("SELECT * FROM $table WHERE $idField = ?");
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function create($data) {
        $table = $this->map['incidencia_table'];
        $estat = $this->map['incidencia_estat'];
        $prioritat = $this->map['incidencia_prioritat'];

        $stmt = $this->db->prepare(
            "INSERT INTO $table ($estat, $prioritat) VALUES (?, ?)"
        );

        return $stmt->execute([
            $data['estat'],
            $data['prioritat']
        ]);
    }
}
```

---

# 📂 controllers/IncidenciaController.php

```php
<?php

require_once __DIR__ . '/../models/Incidencia.php';

class IncidenciaController {

    public function index() {
        $model = new Incidencia();
        $incidencies = $model->getAll();
        require __DIR__ . '/../views/incidencies/list.php';
    }

    public function show($id) {
        $model = new Incidencia();
        $incidencia = $model->find($id);
        require __DIR__ . '/../views/incidencies/show.php';
    }

    public function create() {
        require __DIR__ . '/../views/incidencies/create.php';
    }

    public function store() {
        $model = new Incidencia();
        $model->create($_POST);
        header("Location: index.php");
        exit;
    }
}
```

---

# 📂 index.php (Front Controller)

```php
<?php

require_once 'config/database.php';
require_once 'controllers/IncidenciaController.php';

$controller = new IncidenciaController();

$action = $_GET['action'] ?? 'index';

switch ($action) {
    case 'show':
        $controller->show($_GET['id']);
        break;
    case 'create':
        $controller->create();
        break;
    case 'store':
        $controller->store();
        break;
    default:
        $controller->index();
}
```

---

# 📂 views/layout.php (opcional)

```php
<!DOCTYPE html>
<html>
<head>
    <title>PhoenixTech</title>
    <meta charset="UTF-8">
</head>
<body>

<h1>PhoenixTech - Gestió Incidències</h1>

<hr>

<?= $content ?>

</body>
</html>
```

---

# 📂 views/incidencies/list.php

```php
<h2>Llista d'Incidències</h2>

<a href="index.php?action=create">Nova incidència</a>

<ul>
<?php foreach ($incidencies as $i): ?>
    <li>
        <a href="index.php?action=show&id=<?= $i['idIncidencia'] ?>">
            <?= htmlspecialchars($i['idIncidencia']) ?>
        </a>
    </li>
<?php endforeach; ?>
</ul>
```

⚠ Si el nom de l'ID és diferent, l'han d'adaptar.

---

# 📂 views/incidencies/show.php

```php
<h2>Detall Incidència</h2>

<p><strong>ID:</strong> <?= htmlspecialchars($incidencia['idIncidencia']) ?></p>
<p><strong>Estat:</strong> <?= htmlspecialchars($incidencia['estat_incidencia']) ?></p>
<p><strong>Prioritat:</strong> <?= htmlspecialchars($incidencia['prioritat']) ?></p>

<a href="index.php">Tornar</a>
```

---

# 📂 views/incidencies/create.php

```php
<h2>Nova Incidència</h2>

<form method="POST" action="index.php?action=store">

    <label>Estat:</label>
    <input type="text" name="estat" required><br><br>

    <label>Prioritat:</label>
    <input type="text" name="prioritat" required><br><br>

    <button type="submit">Guardar</button>

</form>

<a href="index.php">Cancel·lar</a>
```

---

# 🔥 Valor pedagògic

Amb aquest sistema:

- Cada grup ha d’adaptar model_map.php
- Han d'entendre els seus atributs
- No poden copiar SQL directament
- Entenen MVC real

---

# 🧠 Extensió futura (si vols evolucionar)

- Afegir login
- Afegir rols (tecnic / usuari)
- Afegir historial
- Afegir filtres per estat
- Afegir API REST

---

# 🎯 Conclusió

Això és:

- Senzill
- Funcional
- Didàctic
- Adaptable
- Escalable

Perfecte per PhoenixTech primer any.
