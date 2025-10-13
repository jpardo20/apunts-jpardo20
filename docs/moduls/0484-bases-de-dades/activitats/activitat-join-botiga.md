# Activitat: Treballem les JOIN

## Objectius de l’activitat
* Aplicar correctament les instruccions `INNER JOIN` i `LEFT JOIN`.  
* Saber combinar taules per obtenir informació rellevant.  
* Interpretar els resultats de les consultes SQL.

## Context
Treballarem sobre la base de dades **`botiga`**.  

## Exercici 1 — Comandes i clients (INNER JOIN)

Mostra el **nom del client**, la **ciutat** i la **data de comanda** per a totes les comandes existents.

**Pregunta:**  
Quants clients diferents han fet comandes?



## Exercici 2 — Empleats que gestionen comandes

Mostra el **nom** i **cognom de l’empleat**, juntament amb el **número de comanda** que ha gestionat.


**Pregunta:**  
Quin empleat ha gestionat més comandes?



## Exercici 3 — Clients sense comandes (LEFT JOIN)
Mostra **tots els clients**, i si han fet alguna comanda, indica l’`IdComanda`.


**Pregunta:**  
Quins clients apareixen amb el camp `IdComanda` a `NULL`?



## Exercici 4 — Productes sense vendes

Mostra els **productes** que **no han estat venuts mai**.


**Pregunta:**  
Quants productes no tenen cap comanda associada?



## Exercici 5 — Bonus

Mostra per a cada client:
* El seu **nom**
* El **total de comandes** que ha fet




## Lliurament
Crea un fitxer anomenat **`<primerCognomAlumne>-joins-botiga.sql`** amb totes les consultes.  
Afegeix un comentari `--` abans de cada exercici.  
Adjunta una **captura de pantalla** amb l’execució correcta a **phpmyadmin**.
