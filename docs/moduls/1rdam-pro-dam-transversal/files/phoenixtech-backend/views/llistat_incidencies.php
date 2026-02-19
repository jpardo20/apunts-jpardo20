<?php
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    echo "<p>";
    echo $row['titol'] . " - " . $row['usuari'] . " - " . $row['estat'];
    echo "</p>";
}
?>
