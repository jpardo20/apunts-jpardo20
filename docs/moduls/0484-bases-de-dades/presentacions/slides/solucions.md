    # Solucions SQL (70 enunciats, dades amb unitats coherents)

## Ex 1
**Enunciat:** Llista el nom de tots els clients.

**Solució (SQL):**

```sql
SELECT NomClient
FROM Clients;
```

<pre>
mysql> SELECT NomClient
    -> FROM Clients;
+---------------------------+
| NomClient                 |
+---------------------------+
| Miró Logística            |
| Aliments Casas            |
| Font i Fills              |
| Pons Distribucions        |
| Puig i Fills              |
| Ferrer Logística          |
| Embotits del Tarragona    |
| Begudes Soler             |
| Vila Distribucions        |
| Forn Vila                 |
| Mercats Mataró            |
| Ferrer Distribucions      |
| Cooperativa Córdova       |
| Cooperativa Manresa       |
| Mercats Sevilla           |
| Aliments Serra            |
| Pujol Distribucions       |
| Forn Pons                 |
| Aliments Puig             |
| Ribas Logística           |
| Begudes Pons              |
| Embotits Vila             |
| Cafès Ferrer              |
| Casas Logística           |
| Pujol Distribucions       |
| Begudes Soler             |
| Fruita Vila               |
| Aliments Font             |
| Cooperativa Valladolid    |
| Prat i Fills              |
| Cooperativa Sant Sebastià |
| Mercats Màlaga            |
| Ferrer Distribucions      |
| Embotits del Tarragona    |
| Casas Logística           |
| Mercats Badalona          |
| Aliments Miró             |
| Cooperativa Girona        |
| Font Distribucions        |
| Vila Logística            |
| Soler Distribucions       |
| Aliments Serra            |
| Peix Puig                 |
| Font i Fills              |
| Casas Distribucions       |
| Peix Vila                 |
| Cooperativa Saragossa     |
| Aliments Prat             |
| Aliments Pons             |
| Casas Logística           |
| Aliments Pujol            |
| Vila i Fills              |
| Miró Logística            |
| Vila i Fills              |
| Miró Logística            |
| Fruita del Bilbao         |
| Soler Distribucions       |
| Mercats Barcelona         |
| Cooperativa Sevilla       |
| Làctics del Manresa       |
| Produits Dubois           |
| Graz Feinkost             |
| Smit Import BV            |
| Tòquio Foods              |
| Mayer & Söhne             |
| Taylor Trading Ltd        |
| Davis Foods Inc.          |
| Yamamoto Market           |
| Vini di Roma              |
| Vini di Milà              |
| Vins de Marsella          |
| Trattoria Ferrari         |
| Pichler & Söhne           |
| Queijos Porto             |
| Amsterdam Delicatessen    |
| Alpen Delikatessen        |
| Osaka Import              |
| Mercearia Martins         |
| Bäckerei Baumann          |
| Nilsson Chark             |
| Gastronomia Esposito      |
| Berlin Feinkost           |
| Smit Import BV            |
| Amsterdam Delicatessen    |
| Mayer & Söhne             |
| Andersson Bageri          |
| Johnson Market            |
| Doçaria Oliveira          |
| Smit Import BV            |
| Alimentari Ferrari        |
+---------------------------+
90 rows in set (0.001 sec)
</pre>

---

## Ex 2
**Enunciat:** Llista el nom i el país de tots els clients.

**Solució (SQL):**

```sql
SELECT NomClient, Pais
FROM Clients;
```

<pre>
mysql> SELECT NomClient, Pais
    -> FROM Clients;
+----------------------------+----------------+
| NomClient                  | Pais           |
+----------------------------+----------------+
| Miró Logística             | Espanya        |
| Aliments Casas             | Espanya        |
| Font i Fills               | Espanya        |
| Pons Distribucions         | Espanya        |
| Puig i Fills               | Espanya        |
| Ferrer Logística           | Espanya        |
| Embotits del Tarragona     | Espanya        |
| Begudes Soler              | Espanya        |
| Vila Distribucions         | Espanya        |
| Forn Vila                  | Espanya        |
| Mercats Mataró             | Espanya        |
| Ferrer Distribucions       | Espanya        |
| Cooperativa Còrdova        | Espanya        |
| Cooperativa Manresa        | Espanya        |
| Mercats Sevilla            | Espanya        |
| Aliments Serra             | Espanya        |
| Pujol Distribucions        | Espanya        |
| Forn Pons                  | Espanya        |
| Aliments Puig              | Espanya        |
| Ribas Logística            | Espanya        |
| Begudes Pons               | Espanya        |
| Embotits Vila              | Espanya        |
| Cafès Ferrer               | Espanya        |
| Casas Logística            | Espanya        |
| Pujol Distribucions        | Espanya        |
| Begudes Soler              | Espanya        |
| Fruita Vila                | Espanya        |
| Aliments Font              | Espanya        |
| Cooperativa Valladolid     | Espanya        |
| Prat i Fills               | Espanya        |
| Cooperativa Sant Sebastià  | Espanya        |
| Mercats Màlaga             | Espanya        |
| Ferrer Distribucions       | Espanya        |
| Embotits del Tarragona     | Espanya        |
| Casas Logística            | Espanya        |
| Mercats Badalona           | Espanya        |
| Aliments Miró              | Espanya        |
| Cooperativa Girona         | Espanya        |
| Font Distribucions         | Espanya        |
| Vila Logística             | Espanya        |
| Soler Distribucions        | Espanya        |
| Aliments Serra             | Espanya        |
| Peix Puig                  | Espanya        |
| Font i Fills               | Espanya        |
| Casas Distribucions        | Espanya        |
| Peix Vila                  | Espanya        |
| Cooperativa Saragossa      | Espanya        |
| Aliments Prat              | Espanya        |
| Aliments Pons              | Espanya        |
| Casas Logística            | Espanya        |
| Aliments Pujol             | Espanya        |
| Vila i Fills               | Espanya        |
| Miró Logística             | Espanya        |
| Vila i Fills               | Espanya        |
| Miró Logística             | Espanya        |
| Fruita del Bilbao          | Espanya        |
| Soler Distribucions        | Espanya        |
| Mercats Barcelona          | Espanya        |
| Cooperativa Sevilla        | Espanya        |
| Làctics del Manresa        | Espanya        |
| Produits Dubois            | França         |
| Graz Feinkost              | Àustria        |
| Smit Import BV             | Països Baixos  |
| Tòquio Foods               | Japó           |
| Mayer & Söhne              | Àustria        |
| Taylor Trading Ltd         | Regne Unit     |
| Davis Foods Inc.           | Estats Units   |
| Yamamoto Market            | Japó           |
| Vini di Roma               | Itàlia         |
| Vini di Milà               | Itàlia         |
| Vins de Marsella           | França         |
| Trattoria Ferrari          | Itàlia         |
| Pichler & Söhne            | Àustria        |
| Queijos Porto              | Portugal       |
| Amsterdam Delicatessen     | Països Baixos  |
| Alpen Delikatessen         | Suïssa         |
| Osaka Import               | Japó           |
| Mercearia Martins          | Portugal       |
| Bäckerei Baumann           | Suïssa         |
| Nilsson Chark              | Suècia         |
| Gastronomia Esposito       | Itàlia         |
| Berlin Feinkost            | Alemanya       |
| Smit Import BV             | Països Baixos  |
| Amsterdam Delicatessen     | Països Baixos  |
| Mayer & Söhne              | Àustria        |
| Andersson Bageri           | Suècia         |
| Johnson Market             | Estats Units   |
| Doçaria Oliveira           | Portugal       |
| Smit Import BV             | Països Baixos  |
| Alimentari Ferrari         | Itàlia         |
+----------------------------+----------------+
90 rows in set (0.001 sec)
</pre>
---

## Ex 3
**Enunciat:** Mostra totes les columnes de la taula Productes.

**Solució (SQL):**

```sql
SELECT *
FROM Productes;
```

<pre>
mysql> SELECT *
    -> FROM Productes;
+------------+---------------------------------+-------------+-------------+-----------------------+-------+
| IdProducte | NomProducte                     | IdProveidor | IdCategoria | Unitat                | Preu  |
+------------+---------------------------------+-------------+-------------+-----------------------+-------+
|          1 | Pastanagues                     |           1 |           8 | 12 safates de 1 kg    | 16.88 |
|          2 | Sardines en llauna premium      |           1 |           7 | 20 llaunes de 120 g   | 53.46 |
|          3 | Mantega salada Empordà          |           1 |           4 | 24 iogurts de 125 g   | 13.75 |
|          4 | Refresc de taronja Bravamar     |           2 |           1 | 10 llaunes de 330 ml  | 12.68 |
|          5 | Peres Conferència Alpina        |           2 |           8 | 6 kg                  | 56.20 |
|          6 | seitons en vinagre              |           3 |           7 | 6 llaunes de 120 g    |  3.66 |
|          7 | Tònic gurmet                    |           3 |           1 | 6 ampolles de 1 L     | 74.55 |
|          8 | Vinagre balsàmic                |           3 |           2 | 10 pots de 250 g      | 10.87 |
|          9 | Cereals de blat Fontdelpi       |           4 |           5 | 10 caixes x 12        | 74.02 |
|         10 | Pit de gall dindi Selecta       |           4 |           6 | 20 peces              | 55.52 |
|         11 | Ceba dolça Selecta              |           4 |           8 | 24 safates de 1 kg    | 56.99 |
|         12 | Pit de gall dindi Alpina        |           5 |           6 | 20 safates de 500 g   | 59.54 |
|         13 | Cupcakes                        |           5 |           3 | 24 barres de 100 g    | 53.59 |
|         14 | Cereals de blat eco             |           5 |           5 | 20 paquets de 500 g   | 61.51 |
|         15 | Suc de poma Selecta             |           6 |           1 | 10 llaunes de 330 ml  | 23.76 |
|         16 | Pollastre rostit                |           6 |           6 | 20 peces              | 71.08 |
|         17 | Ordi perlat                     |           6 |           5 | 10 bosses de 1 kg     | 33.23 |
|         18 | Pit de gall dindi gurmet        |           7 |           6 | 10 safates de 500 g   | 76.12 |
|         19 | Galetes d'ametlla Empordà       |           7 |           3 | 20 barres de 100 g    | 36.38 |
|         20 | Aigua mineral premium           |           7 |           1 | 6 llaunes de 330 ml   | 57.99 |
|         21 | Sardines en llauna Penedès      |           8 |           7 | 6 safates de 500 g    | 11.10 |
|         22 | Pomes Golden Penedès            |           8 |           8 | 20 kg                 |  7.89 |
|         23 | Pit de gall dindi eco           |           9 |           6 | 24 bosses de 1 kg     | 36.75 |
|         24 | Tonyina en oli                  |           9 |           7 | 6 llaunes de 120 g    | 56.55 |
|         25 | Infusió de camamilla Bravamar   |           9 |           1 | 6 llaunes de 330 ml   | 34.40 |
|         26 | Xoriço picant                   |          10 |           6 | 20 bosses de 1 kg     | 17.67 |
|         27 | Cupcakes clàssic                |          10 |           3 | 6 barres de 100 g     | 42.26 |
|         28 | Bacallà dessalat intens         |          10 |           7 | 12 paquets de 300 g   | 20.48 |
|         29 | Mató artesà                     |          11 |           4 | 20 envasos de 1 L     | 35.11 |
|         30 | Farina de força                 |          11 |           5 | 12 paquets de 500 g   | 74.77 |
|         31 | Salsa de soja Montseny          |          11 |           2 | 12 pots de 500 g      | 35.32 |
|         32 | Refresc de taronja              |          12 |           1 | 20 ampolles de 500 ml | 72.28 |
|         33 | Quinoa                          |          12 |           5 | 20 paquets de 500 g   | 16.65 |
|         34 | Tomàquets pera                  |          12 |           8 | 20 caixes de 5 kg     | 13.77 |
|         35 | Bacallà dessalat                |          13 |           7 | 20 llaunes de 120 g   | 28.91 |
|         36 | Pesto Fontdelpi                 |          13 |           2 | 24 pots de 250 g      | 13.10 |
|         37 | Ordi perlat Delta               |          14 |           5 | 12 caixes x 12        | 24.81 |
|         38 | Allioli Rial                    |          14 |           2 | 10 pots de 250 g      | 57.05 |
|         39 | Pit de gall dindi               |          14 |           6 | 20 safates de 500 g   | 11.08 |
|         40 | Quinoa                          |          15 |           5 | 24 paquets de 500 g   | 36.37 |
|         41 | Mostassa antiga                 |          15 |           2 | 6 pots de 500 g       | 27.98 |
|         42 | Musclos escabetx Penedès        |          16 |           7 | 24 safates de 500 g   |  7.88 |
|         43 | Pollastre rostit                |          16 |           6 | 20 safates de 500 g   | 24.31 |
|         44 | Aigua mineral                   |          16 |           1 | 12 llaunes de 330 ml  | 66.26 |
|         45 | Pebrots vermells                |          17 |           8 | 6 caixes de 5 kg      |  5.23 |
|         46 | Caramels de mel                 |          17 |           3 | 24 barres de 100 g    | 19.51 |
|         47 | Pit de gall dindi intens        |          17 |           6 | 24 bosses de 1 kg     | 16.36 |
|         48 | Arròs bomba Delta               |          18 |           5 | 6 paquets de 500 g    | 19.54 |
|         49 | Salsa de soja Raval             |          18 |           2 | 12 ampolles de 250 ml | 27.75 |
|         50 | Suc de poma Rial                |          18 |           1 | 20 ampolles de 500 ml | 60.31 |
|         51 | Xoriço picant Cristall          |          19 |           6 | 12 bosses de 1 kg     | 46.00 |
|         52 | Ketchup clàssic                 |          19 |           2 | 12 ampolles de 250 ml | 58.10 |
|         53 | Refresc de taronja Empordà      |          20 |           1 | 24 ampolles de 500 ml | 44.39 |
|         54 | Musclos escabetx premium        |          20 |           7 | 24 safates de 500 g   | 23.00 |
|         55 | Xocolata negra 70% Rial         |          21 |           3 | 20 caixes x 12        | 52.79 |
|         56 | Cervesa artesana                |          21 |           1 | 10 llaunes de 330 ml  | 36.74 |
|         57 | seitons en vinagre              |          22 |           7 | 24 paquets de 300 g   | 69.18 |
|         58 | Ketchup Fontdelpi               |          22 |           2 | 6 ampolles de 250 ml  | 25.47 |
|         59 | Quinoa                          |          22 |           5 | 24 bosses de 1 kg     | 11.83 |
|         60 | Pesto Delta                     |          23 |           2 | 20 ampolles de 250 ml | 57.56 |
|         61 | Botifarra Empordà               |          23 |           6 | 24 bosses de 1 kg     | 34.32 |
|         62 | Xocolata negra 70% artesà       |          24 |           3 | 12 safates de 300 g   | 29.69 |
|         63 | Pomes Golden clàssic            |          24 |           8 | 20 caixes de 5 kg     | 60.46 |
|         64 | Pastanagues                     |          25 |           8 | 10 safates de 1 kg    | 55.03 |
|         65 | Farina de força clàssic         |          25 |           5 | 20 paquets de 500 g   | 19.54 |
|         66 | Ceba dolça                      |          26 |           8 | 12 safates de 1 kg    | 76.08 |
|         67 | Iogurt natural Penedès          |          26 |           4 | 24 terrines de 500 g  | 75.41 |
|         68 | Pasta espagueti clàssic         |          27 |           5 | 10 caixes x 12        | 14.23 |
|         69 | Pollastre rostit Selecta        |          27 |           6 | 24 safates de 500 g   | 52.81 |
|         70 | Salsa de soja Montseny          |          28 |           2 | 6 pots de 500 g       | 74.59 |
|         71 | Formatge curat                  |          28 |           4 | 20 envasos de 1 L     | 34.23 |
|         72 | Tè negre eco                    |          29 |           1 | 24 ampolles de 1 L    | 27.10 |
|         73 | Pastanagues                     |          29 |           8 | 6 caixes de 5 kg      | 29.28 |
|         74 | Pebrots vermells                |          30 |           8 | 6 caixes de 5 kg      | 59.94 |
|         75 | Salmó fumat                     |          30 |           7 | 12 safates de 500 g   | 75.67 |
|         76 | Pomes Golden                    |          31 |           8 | 10 caixes de 5 kg     |  3.93 |
|         77 | Kefir                           |          31 |           4 | 12 iogurts de 125 g   | 46.37 |
|         78 | Ketchup Penedès                 |          31 |           2 | 20 pots de 500 g      | 64.01 |
|         79 | Pesto                           |          32 |           2 | 10 ampolles de 250 ml | 21.91 |
|         80 | Mousse de xocolata              |          32 |           3 | 6 safates de 300 g    | 62.00 |
|         81 | Refresc de taronja Cristall     |          32 |           1 | 24 ampolles de 500 ml | 41.15 |
|         82 | seitons en vinagre              |          33 |           7 | 10 paquets de 300 g   | 12.35 |
|         83 | Cupcakes                        |          33 |           3 | 12 caixes x 12        | 13.73 |
|         84 | Iogurt natural suau             |          33 |           4 | 6 iogurts de 125 g    |  5.22 |
|         85 | Pasta espagueti                 |          34 |           5 | 10 bosses de 1 kg     | 77.60 |
|         86 | Mousse de xocolata intens       |          34 |           3 | 24 safates de 300 g   | 12.29 |
|         87 | Vinagre balsàmic                |          34 |           2 | 20 pots de 250 g      | 43.90 |
|         88 | Tomàquets pera Montseny         |          35 |           8 | 10 safates de 1 kg    | 30.36 |
|         89 | Refresc de taronja              |          35 |           1 | 24 ampolles de 1 L    | 33.36 |
|         90 | Pomes Golden eco                |          36 |           8 | 20 kg                 |  7.34 |
|         91 | Llet sencera Mediterrani        |          36 |           4 | 10 terrines de 500 g  | 75.89 |
|         92 | Tè negre                        |          36 |           1 | 24 ampolles de 1 L    | 75.69 |
|         93 | Caramels de mel gurmet          |          37 |           3 | 10 barres de 100 g    | 19.80 |
|         94 | Suc de poma                     |          37 |           1 | 10 ampolles de 1 L    | 38.68 |
|         95 | Sardines en llauna              |          38 |           7 | 12 llaunes de 120 g   | 71.16 |
|         96 | Tomàquets pera                  |          38 |           8 | 12 safates de 1 kg    |  3.12 |
|         97 | Torró d'avellana                |          39 |           3 | 20 barres de 100 g    | 59.12 |
|         98 | Roast beef tallat eco           |          39 |           6 | 10 safates de 500 g   | 26.11 |
|         99 | Botifarra                       |          40 |           6 | 6 safates de 500 g    | 65.20 |
|        100 | Cupcakes Penedès                |          40 |           3 | 6 barres de 100 g     | 44.87 |
|        101 | Refresc de taronja clàssic      |          40 |           1 | 12 ampolles de 1 L    | 61.51 |
|        102 | Pebrots vermells                |           1 |           8 | 12 caixes de 5 kg     | 34.58 |
|        103 | Arròs bomba                     |          21 |           5 | 12 paquets de 500 g   | 74.85 |
|        104 | Pastanagues clàssic             |          20 |           8 | 12 caixes de 5 kg     | 29.46 |
|        105 | Pomes Golden                    |          16 |           8 | 20 caixes de 5 kg     | 45.52 |
|        106 | Galetes d'ametlla               |          32 |           3 | 6 barres de 100 g     | 30.27 |
|        107 | Refresc de taronja              |          38 |           1 | 6 ampolles de 1 L     | 24.52 |
|        108 | Pit de gall dindi               |           3 |           6 | 10 peces              | 54.27 |
|        109 | Infusió de camamilla selecció   |          31 |           1 | 6 ampolles de 500 ml  | 28.16 |
|        110 | Bacallà dessalat                |          39 |           7 | 6 llaunes de 120 g    | 71.92 |
|        111 | seitons en vinagre Raval        |          26 |           7 | 24 paquets de 300 g   | 72.18 |
|        112 | Vinagre balsàmic suau           |          11 |           2 | 6 pots de 250 g       | 58.97 |
|        113 | Cupcakes                        |          36 |           3 | 10 barres de 100 g    |  8.64 |
|        114 | Xocolata negra 70% Raval        |           2 |           3 | 10 safates de 300 g   | 14.69 |
|        115 | Roast beef tallat Penedès       |           8 |           6 | 12 safates de 500 g   | 19.47 |
|        116 | Salmó fumat                     |          35 |           7 | 24 paquets de 300 g   | 43.56 |
|        117 | Xoriço picant                   |          22 |           6 | 24 peces              | 41.50 |
|        118 | Mató artesà                     |          26 |           4 | 10 envasos de 1 L     | 17.19 |
|        119 | Arròs bomba Cristall            |          10 |           5 | 24 paquets de 500 g   | 14.30 |
|        120 | Cupcakes                        |          31 |           3 | 24 barres de 100 g    | 35.02 |
+------------+---------------------------------+-------------+-------------+-----------------------+-------+
120 rows in set (0.002 sec)
</pre>

---

## Ex 4
**Enunciat:** Mostra els primers 10 clients (amb **`LIMIT`**).

**Solució (SQL):**

```sql
SELECT *
FROM Clients
LIMIT 10;
```


<pre>
mysql> SELECT *
    -> FROM Clients
    -> LIMIT 10;
+----------+------------------------+-------------+-------------------------+----------------+------------+---------+
| IdClient | NomClient              | NomContacte | Adressa                 | Ciutat         | CodiPostal | Pais    |
+----------+------------------------+-------------+-------------------------+----------------+------------+---------+
|        1 | Miró Logística         | Anna Font   | Passeig del Sol, 139    | Sant Sebastià  | 20001      | Espanya |
|        2 | Aliments Casas         | Laia Ferrer | Avinguda Gran Via, 44   | Còrdova        | 14001      | Espanya |
|        3 | Font i Fills           | Clara Casas | Avinguda del Sol, 47    | València       | 46001      | Espanya |
|        4 | Pons Distribucions     | Clara Vila  | Avinguda de Girona, 125 | Figueres       | 17600      | Espanya |
|        5 | Puig i Fills           | Clara Ribas | Avinguda Catalunya, 185 | A Corunya      | 15001      | Espanya |
|        6 | Ferrer Logística       | Pere Soler  | Passeig Gran Via, 128   | Sevilla        | 41001      | Espanya |
|        7 | Embotits del Tarragona | Anna Ferrer | Passeig Major, 14       | Tarragona      | 43001      | Espanya |
|        8 | Begudes Soler          | Oriol Serra | Carrer de Girona, 77    | València       | 46001      | Espanya |
|        9 | Vila Distribucions     | Pere Font   | Passeig de Gràcia, 132  | Madrid         | 28001      | Espanya |
|       10 | Forn Vila              | Laia Miró   | Passeig de Gràcia, 102  | Saragossa      | 50001      | Espanya |
+----------+------------------------+-------------+-------------------------+----------------+------------+---------+
10 rows in set (0.001 sec)

</pre>

---

## Ex 5
**Enunciat:** Mostra els 5 primers productes ordenats pel preu ascendent.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
ORDER BY Preu ASC
LIMIT 5;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> ORDER BY Preu ASC
    -> LIMIT 5;
+------------+---------------------+------+
| IdProducte | NomProducte         | Preu |
+------------+---------------------+------+
|         96 | Tomàquets pera      | 3.12 |
|          6 | seitons en vinagre  | 3.66 |
|         76 | Pomes Golden        | 3.93 |
|         84 | Iogurt natural suau | 5.22 |
|         45 | Pebrots vermells    | 5.23 |
+------------+---------------------+------+
5 rows in set (0.001 sec)
</pre>

---

## Ex 6
**Enunciat:** Llista tots els països diferents on hi ha clients.

**Solució (SQL):**

```sql
SELECT DISTINCT Pais
FROM Clients
ORDER BY Pais;
```

<pre>

mysql> SELECT DISTINCT Pais
    -> FROM Clients
    -> ORDER BY Pais;
+----------------+
| Pais           |
+----------------+
| Alemanya       |
| Àustria        |
| Espanya        |
| Estats Units   |
| França         |
| Itàlia         |
| Japó           |
| Països Baixos  |
| Portugal       |
| Regne Unit     |
| Suècia         |
| Suïssa         |
+----------------+
12 rows in set (0.001 sec)
</pre>

---

## Ex 7
**Enunciat:** Llista totes les ciutats diferents de clients a Espanya.

**Solució (SQL):**

```sql
SELECT DISTINCT Ciutat
FROM Clients
WHERE Pais = 'Espanya'
ORDER BY Ciutat;
```

<pre>
mysql> SELECT DISTINCT Ciutat
    -> FROM Clients
    -> WHERE Pais = 'Espanya'
    -> ORDER BY Ciutat;
+----------------+
| Ciutat         |
+----------------+
| A Corunya      |
| Badalona       |
| Barcelona      |
| Bilbao         |
| Còrdova        |
| Figueres       |
| Girona         |
| Granollers     |
| Lleida         |
| Madrid         |
| Màlaga         |
| Manresa        |
| Mataró         |
| Reus           |
| Sant Sebastià  |
| Saragossa      |
| Sevilla        |
| Tarragona      |
| Terrassa       |
| València       |
| Valladolid     |
+----------------+
21 rows in set (0.001 sec)
</pre>

---

## Ex 8
**Enunciat:** Mostra productes amb preu superior a 50.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
WHERE Preu > 50;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> WHERE Preu > 50;
+------------+-----------------------------+-------+
| IdProducte | NomProducte                 | Preu  |
+------------+-----------------------------+-------+
|          2 | Sardines en llauna premium  | 53.46 |
|          5 | Peres Conferència Alpina    | 56.20 |
|          7 | Tònic gurmet                | 74.55 |
|          9 | Cereals de blat Fontdelpi   | 74.02 |
|         10 | Pit de gall dindi Selecta   | 55.52 |
|         11 | Ceba dolça Selecta          | 56.99 |
|         12 | Pit de gall dindi Alpina    | 59.54 |
|         13 | Cupcakes                    | 53.59 |
|         14 | Cereals de blat eco         | 61.51 |
|         16 | Pollastre rostit            | 71.08 |
|         18 | Pit de gall dindi gurmet    | 76.12 |
|         20 | Aigua mineral premium       | 57.99 |
|         24 | Tonyina en oli              | 56.55 |
|         30 | Farina de força             | 74.77 |
|         32 | Refresc de taronja          | 72.28 |
|         38 | Allioli Rial                | 57.05 |
|         44 | Aigua mineral               | 66.26 |
|         50 | Suc de poma Rial            | 60.31 |
|         52 | Ketchup clàssic             | 58.10 |
|         55 | Xocolata negra 70% Rial     | 52.79 |
|         57 | seitons en vinagre          | 69.18 |
|         60 | Pesto Delta                 | 57.56 |
|         63 | Pomes Golden clàssic        | 60.46 |
|         64 | Pastanagues                 | 55.03 |
|         66 | Ceba dolça                  | 76.08 |
|         67 | Iogurt natural Penedès      | 75.41 |
|         69 | Pollastre rostit Selecta    | 52.81 |
|         70 | Salsa de soja Montseny      | 74.59 |
|         74 | Pebrots vermells            | 59.94 |
|         75 | Salmó fumat                 | 75.67 |
|         78 | Ketchup Penedès             | 64.01 |
|         80 | Mousse de xocolata          | 62.00 |
|         85 | Pasta espagueti             | 77.60 |
|         91 | Llet sencera Mediterrani    | 75.89 |
|         92 | Tè negre                    | 75.69 |
|         95 | Sardines en llauna          | 71.16 |
|         97 | Torró d'avellana            | 59.12 |
|         99 | Botifarra                   | 65.20 |
|        101 | Refresc de taronja clàssic  | 61.51 |
|        103 | Arròs bomba                 | 74.85 |
|        108 | Pit de gall dindi           | 54.27 |
|        110 | Bacallà dessalat            | 71.92 |
|        111 | seitons en vinagre Raval    | 72.18 |
|        112 | Vinagre balsàmic suau       | 58.97 |
+------------+-----------------------------+-------+
44 rows in set (0.001 sec)
</pre>

---

## Ex 9
**Enunciat:** Mostra productes amb preu entre 10 i 20.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
WHERE Preu BETWEEN 10 AND 20;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> WHERE Preu BETWEEN 10 AND 20;
+------------+-----------------------------+-------+
| IdProducte | NomProducte                 | Preu  |
+------------+-----------------------------+-------+
|          1 | Pastanagues                 | 16.88 |
|          3 | Mantega salada Empordà      | 13.75 |
|          4 | Refresc de taronja Bravamar | 12.68 |
|          8 | Vinagre balsàmic            | 10.87 |
|         21 | Sardines en llauna Penedès  | 11.10 |
|         26 | Xoriço picant               | 17.67 |
|         33 | Quinoa                      | 16.65 |
|         34 | Tomàquets pera              | 13.77 |
|         36 | Pesto Fontdelpi             | 13.10 |
|         39 | Pit de gall dindi           | 11.08 |
|         46 | Caramels de mel             | 19.51 |
|         47 | Pit de gall dindi intens    | 16.36 |
|         48 | Arròs bomba Delta           | 19.54 |
|         59 | Quinoa                      | 11.83 |
|         65 | Farina de força clàssic     | 19.54 |
|         68 | Pasta espagueti clàssic     | 14.23 |
|         82 | seitons en vinagre          | 12.35 |
|         83 | Cupcakes                    | 13.73 |
|         86 | Mousse de xocolata intens   | 12.29 |
|         93 | Caramels de mel gurmet      | 19.80 |
|        114 | Xocolata negra 70% Raval    | 14.69 |
|        115 | Roast beef tallat Penedès   | 19.47 |
|        118 | Mató artesà                 | 17.19 |
|        119 | Arròs bomba Cristall        | 14.30 |
+------------+-----------------------------+-------+
24 rows in set (0.000 sec)
</pre>

---

## Ex 10
**Enunciat:** Mostra clients d'Espanya que siguin de Barcelona o Girona.

**Solució (SQL):**

```sql
SELECT NomClient, Ciutat, Pais
FROM Clients
WHERE Pais='Espanya' AND (Ciutat='Barcelona' OR Ciutat='Girona');
```

<pre>

mysql> SELECT NomClient, Ciutat, Pais
    -> FROM Clients
    -> WHERE Pais='Espanya' AND (Ciutat='Barcelona' OR Ciutat='Girona');
+--------------------+-----------+---------+
| NomClient          | Ciutat    | Pais    |
+--------------------+-----------+---------+
| Aliments Serra     | Girona    | Espanya |
| Begudes Pons       | Barcelona | Espanya |
| Aliments Font      | Girona    | Espanya |
| Casas Logística    | Barcelona | Espanya |
| Cooperativa Girona | Girona    | Espanya |
| Mercats Barcelona  | Barcelona | Espanya |
+--------------------+-----------+---------+
6 rows in set (0.001 sec)
</pre>

---

## Ex 11
**Enunciat:** Mostra productes que NO siguin de la categoria 1 ni 2.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, IdCategoria
FROM Productes
WHERE NOT IdCategoria IN (1,2);
```

<pre>
mysql> SELECT IdProducte, NomProducte, IdCategoria
    -> FROM Productes
    -> WHERE NOT IdCategoria IN (1,2);
+------------+-----------------------------+-------------+
| IdProducte | NomProducte                 | IdCategoria |
+------------+-----------------------------+-------------+
|          1 | Pastanagues                 |           8 |
|          2 | Sardines en llauna premium  |           7 |
|          3 | Mantega salada Empordà      |           4 |
|          5 | Peres Conferència Alpina    |           8 |
|          6 | seitons en vinagre          |           7 |
|          9 | Cereals de blat Fontdelpi   |           5 |
|         10 | Pit de gall dindi Selecta   |           6 |
|         11 | Ceba dolça Selecta          |           8 |
|         12 | Pit de gall dindi Alpina    |           6 |
|         13 | Cupcakes                    |           3 |
|         14 | Cereals de blat eco         |           5 |
|         16 | Pollastre rostit            |           6 |
|         17 | Ordi perlat                 |           5 |
|         18 | Pit de gall dindi gurmet    |           6 |
|         19 | Galetes d'ametlla Empordà   |           3 |
|         21 | Sardines en llauna Penedès  |           7 |
|         22 | Pomes Golden Penedès        |           8 |
|         23 | Pit de gall dindi eco       |           6 |
|         24 | Tonyina en oli              |           7 |
|         26 | Xoriço picant               |           6 |
|         27 | Cupcakes clàssic            |           3 |
|         28 | Bacallà dessalat intens     |           7 |
|         29 | Mató artesà                 |           4 |
|         30 | Farina de força             |           5 |
|         33 | Quinoa                      |           5 |
|         34 | Tomàquets pera              |           8 |
|         35 | Bacallà dessalat            |           7 |
|         37 | Ordi perlat Delta           |           5 |
|         39 | Pit de gall dindi           |           6 |
|         40 | Quinoa                      |           5 |
|         42 | Musclos escabetx Penedès    |           7 |
|         43 | Pollastre rostit            |           6 |
|         45 | Pebrots vermells            |           8 |
|         46 | Caramels de mel             |           3 |
|         47 | Pit de gall dindi intens    |           6 |
|         48 | Arròs bomba Delta           |           5 |
|         51 | Xoriço picant Cristall      |           6 |
|         54 | Musclos escabetx premium    |           7 |
|         55 | Xocolata negra 70% Rial     |           3 |
|         57 | seitons en vinagre          |           7 |
|         59 | Quinoa                      |           5 |
|         61 | Botifarra Empordà           |           6 |
|         62 | Xocolata negra 70% artesà   |           3 |
|         63 | Pomes Golden clàssic        |           8 |
|         64 | Pastanagues                 |           8 |
|         65 | Farina de força clàssic     |           5 |
|         66 | Ceba dolça                  |           8 |
|         67 | Iogurt natural Penedès      |           4 |
|         68 | Pasta espagueti clàssic     |           5 |
|         69 | Pollastre rostit Selecta    |           6 |
|         71 | Formatge curat              |           4 |
|         73 | Pastanagues                 |           8 |
|         74 | Pebrots vermells            |           8 |
|         75 | Salmó fumat                 |           7 |
|         76 | Pomes Golden                |           8 |
|         77 | Kefir                       |           4 |
|         80 | Mousse de xocolata          |           3 |
|         82 | seitons en vinagre          |           7 |
|         83 | Cupcakes                    |           3 |
|         84 | Iogurt natural suau         |           4 |
|         85 | Pasta espagueti             |           5 |
|         86 | Mousse de xocolata intens   |           3 |
|         88 | Tomàquets pera Montseny     |           8 |
|         90 | Pomes Golden eco            |           8 |
|         91 | Llet sencera Mediterrani    |           4 |
|         93 | Caramels de mel gurmet      |           3 |
|         95 | Sardines en llauna          |           7 |
|         96 | Tomàquets pera              |           8 |
|         97 | Torró d'avellana            |           3 |
|         98 | Roast beef tallat eco       |           6 |
|         99 | Botifarra                   |           6 |
|        100 | Cupcakes Penedès            |           3 |
|        102 | Pebrots vermells            |           8 |
|        103 | Arròs bomba                 |           5 |
|        104 | Pastanagues clàssic         |           8 |
|        105 | Pomes Golden                |           8 |
|        106 | Galetes d'ametlla           |           3 |
|        108 | Pit de gall dindi           |           6 |
|        110 | Bacallà dessalat            |           7 |
|        111 | seitons en vinagre Raval    |           7 |
|        113 | Cupcakes                    |           3 |
|        114 | Xocolata negra 70% Raval    |           3 |
|        115 | Roast beef tallat Penedès   |           6 |
|        116 | Salmó fumat                 |           7 |
|        117 | Xoriço picant               |           6 |
|        118 | Mató artesà                 |           4 |
|        119 | Arròs bomba Cristall        |           5 |
|        120 | Cupcakes                    |           3 |
+------------+-----------------------------+-------------+
88 rows in set (0.001 sec)
</pre>

---

## Ex 12
**Enunciat:** Mostra comandes fetes a partir de 2023-01-01.

**Solució (SQL):**

```sql
SELECT IdComanda, IdClient, DataComanda
FROM Comandes
WHERE DataComanda >= '2023-01-01'
ORDER BY DataComanda;
```

<pre>
mysql> SELECT IdComanda, IdClient, DataComanda
    -> FROM Comandes
    -> WHERE DataComanda >= '2023-01-01'
    -> ORDER BY DataComanda;
+-----------+----------+-------------+
| IdComanda | IdClient | DataComanda |
+-----------+----------+-------------+
|     15081 |       13 | 2023-01-03  |
|     15023 |       43 | 2023-01-23  |
|     15012 |       11 | 2023-02-10  |
|     15120 |       22 | 2023-02-16  |
|     15006 |       59 | 2023-02-17  |
|     15088 |       52 | 2023-02-22  |
|     15090 |       85 | 2023-02-23  |
|     15183 |       18 | 2023-02-25  |
|     15211 |       56 | 2023-03-15  |
|     15052 |       81 | 2023-04-08  |
|     15091 |       29 | 2023-04-10  |
|     15027 |       15 | 2023-04-12  |
|     15095 |       76 | 2023-05-12  |
|     15145 |       47 | 2023-05-17  |
|     15054 |       54 | 2023-05-18  |
|     15103 |       81 | 2023-05-26  |
|     15150 |       59 | 2023-05-29  |
|     15020 |       23 | 2023-05-31  |
|     15210 |       11 | 2023-06-05  |
|     15117 |       87 | 2023-06-23  |
|     15046 |       73 | 2023-06-28  |
|     15068 |       43 | 2023-07-11  |
|     15089 |       82 | 2023-07-15  |
|     15014 |       71 | 2023-08-02  |
|     15076 |       66 | 2023-08-07  |
|     15161 |       86 | 2023-08-17  |
|     15021 |       34 | 2023-08-28  |
|     15038 |       55 | 2023-08-31  |
|     15066 |       27 | 2023-09-11  |
|     15019 |       46 | 2023-09-13  |
|     15208 |       38 | 2023-09-20  |
|     15169 |        4 | 2023-10-18  |
|     15166 |       31 | 2023-11-19  |
|     15155 |       88 | 2023-11-21  |
|     15123 |        6 | 2023-12-04  |
|     15206 |       19 | 2023-12-26  |
|     15032 |       34 | 2024-01-13  |
|     15158 |       53 | 2024-02-04  |
|     15093 |       79 | 2024-02-06  |
|     15061 |        6 | 2024-02-07  |
|     15214 |       71 | 2024-02-21  |
|     15148 |       65 | 2024-02-25  |
|     15083 |       52 | 2024-02-27  |
|     15142 |       34 | 2024-03-07  |
|     15008 |       56 | 2024-03-09  |
|     15159 |       52 | 2024-03-31  |
|     15114 |       67 | 2024-04-03  |
|     15154 |       25 | 2024-04-15  |
|     15092 |       63 | 2024-04-19  |
|     15174 |       61 | 2024-04-23  |
|     15133 |       64 | 2024-04-28  |
|     15135 |       69 | 2024-05-01  |
|     15124 |       12 | 2024-05-05  |
|     15080 |       27 | 2024-05-10  |
|     15010 |       53 | 2024-05-18  |
|     15121 |       42 | 2024-05-31  |
|     15113 |       40 | 2024-06-07  |
|     15045 |       81 | 2024-06-27  |
|     15001 |       29 | 2024-06-28  |
|     15167 |       69 | 2024-06-30  |
|     15179 |       43 | 2024-07-06  |
|     15191 |       38 | 2024-08-09  |
|     15149 |       49 | 2024-08-10  |
|     15176 |       81 | 2024-08-11  |
|     15063 |        1 | 2024-08-16  |
|     15151 |       48 | 2024-08-17  |
|     15009 |       85 | 2024-08-18  |
|     15181 |       24 | 2024-08-19  |
|     15197 |       76 | 2024-08-22  |
|     15213 |       56 | 2024-08-23  |
|     15128 |        7 | 2024-09-20  |
|     15143 |       31 | 2024-09-29  |
|     15065 |       30 | 2024-10-26  |
|     15016 |       41 | 2024-10-26  |
|     15031 |       63 | 2024-12-03  |
|     15182 |       21 | 2024-12-06  |
|     15098 |       62 | 2024-12-09  |
|     15131 |       10 | 2024-12-10  |
|     15087 |       29 | 2024-12-11  |
|     15217 |        6 | 2024-12-14  |
+-----------+----------+-------------+
80 rows in set (0.001 sec)
</pre>

---

## Ex 13
**Enunciat:** Mostra empleats amb la foto NULL.

**Solució (SQL):**

```sql
SELECT IdEmpleat, Cognom, Nom, Foto
FROM Empleats
WHERE Foto IS NULL;
```

<pre>
mysql> SELECT IdEmpleat, Cognom, Nom, Foto
    -> FROM Empleats
    -> WHERE Foto IS NULL;
+-----------+--------+--------+------+
| IdEmpleat | Cognom | Nom    | Foto |
+-----------+--------+--------+------+
|         1 | Puig   | Anna   | NULL |
|         2 | Soler  | Jordi  | NULL |
|         3 | Ferrer | Marta  | NULL |
|         4 | Vila   | Oriol  | NULL |
|         5 | Prats  | Clara  | NULL |
|         6 | Riera  | Sergi  | NULL |
|         7 | Pons   | Laia   | NULL |
|         8 | Font   | Marc   | NULL |
|         9 | Casals | Núria  | NULL |
|        10 | Miró   | Pere   | NULL |
+-----------+--------+--------+------+
10 rows in set (0.001 sec)
</pre>

---

## Ex 14
**Enunciat:** Mostra empleats on la nota (Notes) no és NULL.

**Solució (SQL):**

```sql
SELECT IdEmpleat, Cognom, Nom, Notes
FROM Empleats
WHERE Notes IS NOT NULL;
```

<pre>
mysql> SELECT IdEmpleat, Cognom, Nom, Notes
    -> FROM Empleats
    -> WHERE Notes IS NOT NULL;
+-----------+--------+--------+------------------------+
| IdEmpleat | Cognom | Nom    | Notes                  |
+-----------+--------+--------+------------------------+
|         1 | Puig   | Anna   | Director de vendes     |
|         2 | Soler  | Jordi  | Director de vendes     |
|         3 | Ferrer | Marta  | Assist. comercial      |
|         4 | Vila   | Oriol  | Representant de vendes |
|         5 | Prats  | Clara  | Assist. comercial      |
|         6 | Riera  | Sergi  | Assist. comercial      |
|         7 | Pons   | Laia   | Representant de vendes |
|         8 | Font   | Marc   | Assist. comercial      |
|         9 | Casals | Núria  | Representant de vendes |
|        10 | Miró   | Pere   | Assist. comercial      |
+-----------+--------+--------+------------------------+
10 rows in set (0.001 sec)
</pre>

---

## Ex 15
**Enunciat:** Mostra els 10 productes més cars (preu descendent).

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
ORDER BY Preu DESC
LIMIT 10;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> ORDER BY Preu DESC
    -> LIMIT 10;
+------------+--------------------------+-------+
| IdProducte | NomProducte              | Preu  |
+------------+--------------------------+-------+
|         85 | Pasta espagueti          | 77.60 |
|         18 | Pit de gall dindi gurmet | 76.12 |
|         66 | Ceba dolça               | 76.08 |
|         91 | Llet sencera Mediterrani | 75.89 |
|         92 | Tè negre                 | 75.69 |
|         75 | Salmó fumat              | 75.67 |
|         67 | Iogurt natural Penedès   | 75.41 |
|        103 | Arròs bomba              | 74.85 |
|         30 | Farina de força          | 74.77 |
|         70 | Salsa de soja Montseny   | 74.59 |
+------------+--------------------------+-------+
10 rows in set (0.001 sec)
</pre>

---

## Ex 16
**Enunciat:** Ordena clients d'Espanya per ciutat i després per nom.

**Solució (SQL):**

```sql
SELECT NomClient, Ciutat
FROM Clients
WHERE Pais='Espanya'
ORDER BY Ciutat ASC, NomClient ASC;
```

<pre>
mysql> SELECT NomClient, Ciutat
    -> FROM Clients
    -> WHERE Pais='Espanya'
    -> ORDER BY Ciutat ASC, NomClient ASC;
+----------------------------+----------------+
| NomClient                  | Ciutat         |
+----------------------------+----------------+
| Puig i Fills               | A Corunya      |
| Mercats Badalona           | Badalona       |
| Pujol Distribucions        | Badalona       |
| Begudes Pons               | Barcelona      |
| Casas Logística            | Barcelona      |
| Mercats Barcelona          | Barcelona      |
| Embotits Vila              | Bilbao         |
| Forn Pons                  | Bilbao         |
| Fruita del Bilbao          | Bilbao         |
| Pujol Distribucions        | Bilbao         |
| Aliments Casas             | Còrdova        |
| Aliments Miró              | Còrdova        |
| Cooperativa Còrdova        | Còrdova        |
| Pons Distribucions         | Figueres       |
| Vila i Fills               | Figueres       |
| Aliments Font              | Girona         |
| Aliments Serra             | Girona         |
| Cooperativa Girona         | Girona         |
| Peix Puig                  | Granollers     |
| Font i Fills               | Lleida         |
| Fruita Vila                | Lleida         |
| Soler Distribucions        | Madrid         |
| Vila Distribucions         | Madrid         |
| Mercats Màlaga             | Màlaga         |
| Miró Logística             | Màlaga         |
| Aliments Prat              | Manresa        |
| Cooperativa Manresa        | Manresa        |
| Làctics del Manresa        | Manresa        |
| Mercats Mataró             | Mataró         |
| Miró Logística             | Mataró         |
| Prat i Fills               | Mataró         |
| Ferrer Distribucions       | Reus           |
| Font Distribucions         | Reus           |
| Peix Vila                  | Reus           |
| Vila i Fills               | Reus           |
| Cooperativa Sant Sebastià  | Sant Sebastià  |
| Miró Logística             | Sant Sebastià  |
| Ribas Logística            | Sant Sebastià  |
| Aliments Pons              | Saragossa      |
| Casas Distribucions        | Saragossa      |
| Cooperativa Saragossa      | Saragossa      |
| Forn Vila                  | Saragossa      |
| Casas Logística            | Sevilla        |
| Cooperativa Sevilla        | Sevilla        |
| Ferrer Logística           | Sevilla        |
| Mercats Sevilla            | Sevilla        |
| Aliments Pujol             | Tarragona      |
| Embotits del Tarragona     | Tarragona      |
| Embotits del Tarragona     | Tarragona      |
| Ferrer Distribucions       | Tarragona      |
| Aliments Puig              | Terrassa       |
| Cafès Ferrer               | Terrassa       |
| Soler Distribucions        | Terrassa       |
| Begudes Soler              | València       |
| Font i Fills               | València       |
| Aliments Serra             | Valladolid     |
| Begudes Soler              | Valladolid     |
| Casas Logística            | Valladolid     |
| Cooperativa Valladolid     | Valladolid     |
| Vila Logística             | Valladolid     |
+----------------------------+----------------+
60 rows in set (0.001 sec)
</pre>

---

## Ex 17
**Enunciat:** Recupera els 3 productes més barats.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
ORDER BY Preu ASC
LIMIT 3;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> ORDER BY Preu ASC
    -> LIMIT 3;
+------------+--------------------+------+
| IdProducte | NomProducte        | Preu |
+------------+--------------------+------+
|         96 | Tomàquets pera     | 3.12 |
|          6 | seitons en vinagre | 3.66 |
|         76 | Pomes Golden       | 3.93 |
+------------+--------------------+------+
3 rows in set (0.001 sec)
</pre>

---

## Ex 18
**Enunciat:** Recupera les 5 comandes més recents.

**Solució (SQL):**

```sql
SELECT IdComanda, DataComanda
FROM Comandes
ORDER BY DataComanda DESC
LIMIT 5;
```

<pre>
mysql> SELECT IdComanda, DataComanda
    -> FROM Comandes
    -> ORDER BY DataComanda DESC
    -> LIMIT 5;
+-----------+-------------+
| IdComanda | DataComanda |
+-----------+-------------+
|     15217 | 2024-12-14  |
|     15087 | 2024-12-11  |
|     15131 | 2024-12-10  |
|     15098 | 2024-12-09  |
|     15182 | 2024-12-06  |
+-----------+-------------+
5 rows in set (0.000 sec)
</pre>

---
## Ex 19
**Enunciat:** Busca clients amb el nom que contingui la paraula 'Market' (no sensible a majúscules si la BD ho permet).

**Solució (SQL):**

```sql
SELECT IdClient, NomClient
FROM Clients
WHERE NomClient LIKE '%Market%';
```

<pre>
mysql> SELECT IdClient, NomClient
    -> FROM Clients
    -> WHERE NomClient LIKE '%Market%';
+----------+-----------------+
| IdClient | NomClient       |
+----------+-----------------+
|       68 | Yamamoto Market |
|       87 | Johnson Market  |
+----------+-----------------+
2 rows in set (0.001 sec)
</pre>

---
## Ex 20
**Enunciat:** Mostra productes el nom dels quals comenci per 'A'.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte
FROM Productes
WHERE NomProducte LIKE 'A%';
```

<pre>
mysql> SELECT IdProducte, NomProducte
    -> FROM Productes
    -> WHERE NomProducte LIKE 'A%';
+------------+-----------------------+
| IdProducte | NomProducte           |
+------------+-----------------------+
|         20 | Aigua mineral premium |
|         38 | Allioli Rial          |
|         44 | Aigua mineral         |
|         48 | Arròs bomba Delta     |
|        103 | Arròs bomba           |
|        119 | Arròs bomba Cristall  |
+------------+-----------------------+
6 rows in set (0.001 sec)
</pre>

---
## Ex 21
**Enunciat:** Mostra clients amb un espai al nom (dues paraules).

**Solució (SQL):**

```sql
SELECT IdClient, NomClient
FROM Clients
WHERE NomClient LIKE '% %';
```

<pre>

mysql> SELECT IdClient, NomClient
    -> FROM Clients
    -> WHERE NomClient LIKE '% %';
+----------+----------------------------+
| IdClient | NomClient                  |
+----------+----------------------------+
|        1 | Miró Logística             |
|        2 | Aliments Casas             |
|        3 | Font i Fills               |
|        4 | Pons Distribucions         |
|        5 | Puig i Fills               |
|        6 | Ferrer Logística           |
|        7 | Embotits del Tarragona     |
|        8 | Begudes Soler              |
|        9 | Vila Distribucions         |
|       10 | Forn Vila                  |
|       11 | Mercats Mataró             |
|       12 | Ferrer Distribucions       |
|       13 | Cooperativa Còrdova        |
|       14 | Cooperativa Manresa        |
|       15 | Mercats Sevilla            |
|       16 | Aliments Serra             |
|       17 | Pujol Distribucions        |
|       18 | Forn Pons                  |
|       19 | Aliments Puig              |
|       20 | Ribas Logística            |
|       21 | Begudes Pons               |
|       22 | Embotits Vila              |
|       23 | Cafès Ferrer               |
|       24 | Casas Logística            |
|       25 | Pujol Distribucions        |
|       26 | Begudes Soler              |
|       27 | Fruita Vila                |
|       28 | Aliments Font              |
|       29 | Cooperativa Valladolid     |
|       30 | Prat i Fills               |
|       31 | Cooperativa Sant Sebastià  |
|       32 | Mercats Màlaga             |
|       33 | Ferrer Distribucions       |
|       34 | Embotits del Tarragona     |
|       35 | Casas Logística            |
|       36 | Mercats Badalona           |
|       37 | Aliments Miró              |
|       38 | Cooperativa Girona         |
|       39 | Font Distribucions         |
|       40 | Vila Logística             |
|       41 | Soler Distribucions        |
|       42 | Aliments Serra             |
|       43 | Peix Puig                  |
|       44 | Font i Fills               |
|       45 | Casas Distribucions        |
|       46 | Peix Vila                  |
|       47 | Cooperativa Saragossa      |
|       48 | Aliments Prat              |
|       49 | Aliments Pons              |
|       50 | Casas Logística            |
|       51 | Aliments Pujol             |
|       52 | Vila i Fills               |
|       53 | Miró Logística             |
|       54 | Vila i Fills               |
|       55 | Miró Logística             |
|       56 | Fruita del Bilbao          |
|       57 | Soler Distribucions        |
|       58 | Mercats Barcelona          |
|       59 | Cooperativa Sevilla        |
|       60 | Làctics del Manresa        |
|       61 | Produits Dubois            |
|       62 | Graz Feinkost              |
|       63 | Smit Import BV             |
|       64 | Tòquio Foods               |
|       65 | Mayer & Söhne              |
|       66 | Taylor Trading Ltd         |
|       67 | Davis Foods Inc.           |
|       68 | Yamamoto Market            |
|       69 | Vini di Roma               |
|       70 | Vini di Milà               |
|       71 | Vins de Marsella           |
|       72 | Trattoria Ferrari          |
|       73 | Pichler & Söhne            |
|       74 | Queijos Porto              |
|       75 | Amsterdam Delicatessen     |
|       76 | Alpen Delikatessen         |
|       77 | Osaka Import               |
|       78 | Mercearia Martins          |
|       79 | Bäckerei Baumann           |
|       80 | Nilsson Chark              |
|       81 | Gastronomia Esposito       |
|       82 | Berlin Feinkost            |
|       83 | Smit Import BV             |
|       84 | Amsterdam Delicatessen     |
|       85 | Mayer & Söhne              |
|       86 | Andersson Bageri           |
|       87 | Johnson Market             |
|       88 | Doçaria Oliveira           |
|       89 | Smit Import BV             |
|       90 | Alimentari Ferrari         |
+----------+----------------------------+
90 rows in set (0.001 sec)
</pre>

---
## Ex 22
**Enunciat:** Mostra clients de França, Alemanya o Itàlia.

**Solució (SQL):**

```sql
SELECT NomClient, Pais
FROM Clients
WHERE Pais IN ('França','Alemanya','Itàlia')
ORDER BY Pais, NomClient;
```

<pre>
mysql> SELECT NomClient, Pais
    -> FROM Clients
    -> WHERE Pais IN ('França','Alemanya','Itàlia')
    -> ORDER BY Pais, NomClient;
+----------------------+----------+
| NomClient            | Pais     |
+----------------------+----------+
| Berlin Feinkost      | Alemanya |
| Berlin Feinkost      | Alemanya |
| Produits Dubois      | França   |
| Vins de Marsella     | França   |
| Alimentari Ferrari   | Itàlia   |
| Gastronomia Esposito | Itàlia   |
| Trattoria Ferrari    | Itàlia   |
| Vini di Milà         | Itàlia   |
| Vini di Roma         | Itàlia   |
+----------------------+----------+
1 row in set (0.001 sec)
</pre>

---
## Ex 23
**Enunciat:** Mostra productes de categories 3, 4 o 5.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, IdCategoria
FROM Productes
WHERE IdCategoria IN (3,4,5);
```

<pre>
mysql> SELECT IdProducte, NomProducte, IdCategoria
    -> FROM Productes
    -> WHERE IdCategoria IN (3,4,5);
+------------+----------------------------+-------------+
| IdProducte | NomProducte                | IdCategoria |
+------------+----------------------------+-------------+
|         13 | Cupcakes                   |           3 |
|         19 | Galetes d'ametlla Empordà  |           3 |
|         27 | Cupcakes clàssic           |           3 |
|         46 | Caramels de mel            |           3 |
|         55 | Xocolata negra 70% Rial    |           3 |
|         62 | Xocolata negra 70% artesà  |           3 |
|         80 | Mousse de xocolata         |           3 |
|         83 | Cupcakes                   |           3 |
|         86 | Mousse de xocolata intens  |           3 |
|         93 | Caramels de mel gurmet     |           3 |
|         97 | Torró d'avellana           |           3 |
|        100 | Cupcakes Penedès           |           3 |
|        106 | Galetes d'ametlla          |           3 |
|        113 | Cupcakes                   |           3 |
|        114 | Xocolata negra 70% Raval   |           3 |
|        120 | Cupcakes                   |           3 |
|          3 | Mantega salada Empordà     |           4 |
|         29 | Mató artesà                |           4 |
|         67 | Iogurt natural Penedès     |           4 |
|         71 | Formatge curat             |           4 |
|         77 | Kefir                      |           4 |
|         84 | Iogurt natural suau        |           4 |
|         91 | Llet sencera Mediterrani   |           4 |
|        118 | Mató artesà                |           4 |
|          9 | Cereals de blat Fontdelpi  |           5 |
|         14 | Cereals de blat eco        |           5 |
|         17 | Ordi perlat                |           5 |
|         30 | Farina de força            |           5 |
|         33 | Quinoa                     |           5 |
|         37 | Ordi perlat Delta          |           5 |
|         40 | Quinoa                     |           5 |
|         48 | Arròs bomba Delta          |           5 |
|         59 | Quinoa                     |           5 |
|         65 | Farina de força clàssic    |           5 |
|         68 | Pasta espagueti clàssic    |           5 |
|         85 | Pasta espagueti            |           5 |
|        103 | Arròs bomba                |           5 |
|        119 | Arròs bomba Cristall       |           5 |
+------------+----------------------------+-------------+
38 rows in set (0.001 sec)
</pre>

---
## Ex 24
**Enunciat:** Mostra comandes amb IdTransportista 1 o 3.

**Solució (SQL):**

```sql
SELECT IdComanda, IdTransportista
FROM Comandes
WHERE IdTransportista IN (1,3)
LIMIT 10;
```

<pre>
mysql> SELECT IdComanda, IdTransportista
    -> FROM Comandes
    -> WHERE IdTransportista IN (1,3)
    -> LIMIT 10;
+-----------+-----------------+
| IdComanda | IdTransportista |
+-----------+-----------------+
|     15001 |               1 |
|     15002 |               1 |
|     15004 |               1 |
|     15008 |               1 |
|     15010 |               1 |
|     15013 |               1 |
|     15018 |               1 |
|     15024 |               1 |
|     15027 |               1 |
|     15036 |               1 |
+-----------+-----------------+
10 rows in set (0.001 sec)
</pre>

---
## Ex 25
**Enunciat:** Mostra productes amb àlies a les columnes (nom i preu).

**Solució (SQL):**

```sql
SELECT NomProducte AS Producte, Preu AS PreuUnitari
FROM Productes
LIMIT 10;
```

<pre>
mysql> SELECT NomProducte AS Producte, Preu AS PreuUnitari
    -> FROM Productes
    -> LIMIT 10;
+-----------------------------+-------------+
| Producte                    | PreuUnitari |
+-----------------------------+-------------+
| Pastanagues                 |       16.88 |
| Sardines en llauna premium  |       53.46 |
| Mantega salada Empordà      |       13.75 |
| Refresc de taronja Bravamar |       12.68 |
| Peres Conferència Alpina    |       56.20 |
| seitons en vinagre          |        3.66 |
| Tònic gurmet                |       74.55 |
| Vinagre balsàmic            |       10.87 |
| Cereals de blat Fontdelpi   |       74.02 |
| Pit de gall dindi Selecta   |       55.52 |
+-----------------------------+-------------+
10 rows in set (0.006 sec)
</pre>

---
## Ex 26
**Enunciat:** Concatena nom i cognom dels empleats amb àlies 'Empleat'.

**Solució (SQL):**

```sql
SELECT CONCAT(Nom, ' ' , Cognom) AS Empleat
FROM Empleats;
```

<pre>
mysql> SELECT CONCAT(Nom, ' ' , Cognom) AS Empleat
    -> FROM Empleats;
+---------------+
| Empleat       |
+---------------+
| Anna Puig     |
| Jordi Soler   |
| Marta Ferrer  |
| Oriol Vila    |
| Clara Prats   |
| Sergi Riera   |
| Laia Pons     |
| Marc Font     |
| Núria Casals  |
| Pere Miró     |
+---------------+
10 rows in set (0.001 sec)
</pre>

---
## Ex 27
**Enunciat:** Compta quants clients hi ha en total.

**Solució (SQL):**

```sql
SELECT COUNT(*) AS TotalClients
FROM Clients;
```

<pre>
mysql> SELECT COUNT(*) AS TotalClients
    -> FROM Clients;
+--------------+
| TotalClients |
+--------------+
|           90 |
+--------------+
1 row in set (0.048 sec)
</pre>

---
## Ex 28
**Enunciat:** Troba el preu mínim i màxim dels productes.

**Solució (SQL):**

```sql
SELECT MIN(Preu) AS PreuMinim, MAX(Preu) AS PreuMaxim
FROM Productes;
```

<pre>
mysql> SELECT MIN(Preu) AS PreuMinim, MAX(Preu) AS PreuMaxim
    -> FROM Productes;
+-----------+-----------+
| PreuMinim | PreuMaxim |
+-----------+-----------+
|      3.12 |     77.60 |
+-----------+-----------+
1 row in set (0.001 sec)
</pre>

---
## Ex 29
**Enunciat:** Calcula el preu mitjà dels productes.

**Solució (SQL):**

```sql
SELECT AVG(Preu) AS PreuMig
FROM Productes;
```

<pre>
mysql> SELECT AVG(Preu) AS PreuMig
    -> FROM Productes;
+-----------+
| PreuMig   |
+-----------+
| 39.186750 |
+-----------+
1 row in set (0.001 sec)
</pre>

---
## Ex 30
**Enunciat:** Suma la quantitat total venuda (DetallsComanda).

**Solució (SQL):**

```sql
SELECT SUM(Quantitat) AS UnitatsTotals
FROM DetallsComanda;
```

<pre>
mysql> SELECT SUM(Quantitat) AS UnitatsTotals
    -> FROM DetallsComanda;
+---------------+
| UnitatsTotals |
+---------------+
|          4604 |
+---------------+
1 row in set (0.000 sec)
</pre>

---
## Ex 31
**Enunciat:** Compta el nombre de comandes per any.

**Solució (SQL):**

```sql
--SELECT substr(DataComanda, 1, 4) AS Any, COUNT(*) AS NumComandes
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS NumComandes
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

SELECT substr(DataComanda, 1, 4) AS Any, COUNT(*) AS NumComandes
FROM Comandes
GROUP BY Any
ORDER BY Any;


<pre>

mysql> SELECT YEAR(DataComanda) AS Any, COUNT(*) AS NumComandes
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-------------+
| Any  | NumComandes |
+------+-------------+
| 2020 |          37 |
| 2021 |          50 |
| 2022 |          53 |
| 2023 |          36 |
| 2024 |          44 |
+------+-------------+
5 rows in set (0.001 sec)
</pre>


<pre>
mysql> SELECT substr(DataComanda, 1, 4) AS Any, COUNT(*) AS NumComandes
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-------------+
| Any  | NumComandes |
+------+-------------+
| 2020 |          37 |
| 2021 |          50 |
| 2022 |          53 |
| 2023 |          36 |
| 2024 |          44 |
+------+-------------+
5 rows in set (0.000 sec)
</pre>

---
## Ex 32
**Enunciat:** Compta quants clients hi ha per país (top 10).

**Solució (SQL):**

```sql
SELECT Pais, COUNT(*) AS NumClients
FROM Clients
GROUP BY Pais
ORDER BY NumClients DESC, Pais
LIMIT 10;
```

<pre>

mysql> SELECT Pais, COUNT(*) AS NumClients
    -> FROM Clients
    -> GROUP BY Pais
    -> ORDER BY NumClients DESC, Pais
    -> LIMIT 10;
+----------------+------------+
| Pais           | NumClients |
+----------------+------------+
| Espanya        |         60 |
| Itàlia         |          5 |
| Països Baixos  |          5 |
| Àustria        |          4 |
| Japó           |          3 |
| Portugal       |          3 |
| Estats Units   |          2 |
| França         |          2 |
| Suècia         |          2 |
| Suïssa         |          2 |
+----------------+------------+
10 rows in set (0.001 sec)
</pre>

---
## Ex 33
**Enunciat:** Preu mitjà per categoria (Productes).

**Solució (SQL):**

```sql
SELECT IdCategoria AS Categoria, ROUND(AVG(Preu),2) AS PreuMig
FROM Productes
GROUP BY IdCategoria
ORDER BY Categoria;
```

<pre>
mysql> SELECT IdCategoria AS Categoria, ROUND(AVG(Preu),2) AS PreuMig
    -> FROM Productes
    -> GROUP BY IdCategoria
    -> ORDER BY Categoria;
+-----------+---------+
| Categoria | PreuMig |
+-----------+---------+
|         1 |   45.20 |
|         2 |   41.18 |
|         3 |   33.42 |
|         4 |   37.90 |
|         5 |   39.52 |
|         6 |   41.65 |
|         7 |   41.40 |
|         8 |   32.89 |
+-----------+---------+
8 rows in set (0.000 sec)
</pre>

---
## Ex 34
**Enunciat:** Quines categories tenen preu mitjà > 30? (HAVING).

**Solució (SQL):**

```sql
SELECT IdCategoria AS Categoria, AVG(Preu) AS PreuMig
FROM Productes
GROUP BY IdCategoria HAVING AVG(Preu) > 30
ORDER BY PreuMig DESC;
```

<pre>
mysql> SELECT IdCategoria AS Categoria, AVG(Preu) AS PreuMig
    -> FROM Productes
    -> GROUP BY IdCategoria HAVING AVG(Preu) > 30
    -> ORDER BY PreuMig DESC;
+-----------+-----------+
| Categoria | PreuMig   |
+-----------+-----------+
|         1 | 45.196111 |
|         6 | 41.653529 |
|         7 | 41.404000 |
|         2 | 41.184286 |
|         5 | 39.517857 |
|         4 | 37.896250 |
|         3 | 33.415625 |
|         8 | 32.892222 |
+-----------+-----------+
8 rows in set (0.002 sec)
</pre>

---
## Ex 35
**Enunciat:** Per cada client, quantes comandes té? (top 10).

**Solució (SQL):**

```sql
SELECT IdClient, COUNT(*) AS NumComandes
FROM Comandes
GROUP BY IdClient
ORDER BY NumComandes DESC, IdClient
LIMIT 10;
```

<pre>
mysql> SELECT IdClient, COUNT(*) AS NumComandes
    -> FROM Comandes
    -> GROUP BY IdClient
    -> ORDER BY NumComandes DESC, IdClient
    -> LIMIT 10;
+----------+-------------+
| IdClient | NumComandes |
+----------+-------------+
|       81 |          11 |
|       38 |           6 |
|       15 |           5 |
|       41 |           5 |
|       42 |           5 |
|       56 |           5 |
|       61 |           5 |
|       63 |           5 |
|        1 |           4 |
|       12 |           4 |
+----------+-------------+
10 rows in set (0.001 sec)
</pre>

---
## Ex 36
**Enunciat:** Per cada producte, quantitat total venuda (top 10).

**Solució (SQL):**

```sql
SELECT IdProducte, SUM(Quantitat) AS TotalVenut
FROM DetallsComanda
GROUP BY IdProducte
ORDER BY TotalVenut DESC, IdProducte
LIMIT 10;
```

<pre>

mysql> SELECT IdProducte, SUM(Quantitat) AS TotalVenut
    -> FROM DetallsComanda
    -> GROUP BY IdProducte
    -> ORDER BY TotalVenut DESC, IdProducte
    -> LIMIT 10;
+------------+------------+
| IdProducte | TotalVenut |
+------------+------------+
|         90 |        108 |
|        118 |        102 |
|        109 |         96 |
|         62 |         83 |
|         32 |         78 |
|         96 |         78 |
|         94 |         74 |
|         11 |         73 |
|        106 |         72 |
|        113 |         72 |
+------------+------------+
10 rows in set (0.003 sec)
</pre>

---
## Ex 37
**Enunciat:** Comandes entre 2021-01-01 i 2021-12-31.

**Solució (SQL):**

```sql
SELECT IdComanda, DataComanda
FROM Comandes
WHERE DataComanda BETWEEN '2021-01-01' AND '2021-12-31'
ORDER BY DataComanda;
```

<pre>
mysql> SELECT IdComanda, DataComanda
    -> FROM Comandes
    -> WHERE DataComanda BETWEEN '2021-01-01' AND '2021-12-31'
    -> ORDER BY DataComanda;
+-----------+-------------+
| IdComanda | DataComanda |
+-----------+-------------+
|     15096 | 2021-01-05  |
|     15074 | 2021-01-18  |
|     15187 | 2021-01-18  |
|     15188 | 2021-01-19  |
|     15136 | 2021-01-23  |
|     15005 | 2021-01-24  |
|     15029 | 2021-01-27  |
|     15164 | 2021-02-08  |
|     15190 | 2021-02-12  |
|     15034 | 2021-02-26  |
|     15039 | 2021-03-02  |
|     15028 | 2021-03-03  |
|     15168 | 2021-03-09  |
|     15177 | 2021-03-14  |
|     15207 | 2021-03-17  |
|     15094 | 2021-03-20  |
|     15000 | 2021-03-25  |
|     15033 | 2021-05-07  |
|     15051 | 2021-05-11  |
|     15100 | 2021-06-04  |
|     15002 | 2021-06-04  |
|     15035 | 2021-06-04  |
|     15178 | 2021-06-05  |
|     15122 | 2021-06-06  |
|     15075 | 2021-06-30  |
|     15141 | 2021-07-06  |
|     15192 | 2021-07-17  |
|     15119 | 2021-07-18  |
|     15099 | 2021-08-02  |
|     15127 | 2021-08-13  |
|     15062 | 2021-08-24  |
|     15156 | 2021-08-24  |
|     15073 | 2021-09-01  |
|     15215 | 2021-09-05  |
|     15047 | 2021-09-05  |
|     15015 | 2021-09-05  |
|     15200 | 2021-09-05  |
|     15097 | 2021-09-09  |
|     15050 | 2021-09-26  |
|     15024 | 2021-10-02  |
|     15132 | 2021-10-14  |
|     15184 | 2021-10-30  |
|     15060 | 2021-11-15  |
|     15219 | 2021-11-25  |
|     15180 | 2021-11-27  |
|     15048 | 2021-11-29  |
|     15042 | 2021-12-07  |
|     15108 | 2021-12-12  |
|     15153 | 2021-12-16  |
|     15111 | 2021-12-17  |
+-----------+-------------+
50 rows in set (0.001 sec)

</pre>

---
## Ex 38
**Enunciat:** Comandes fora de l'any 2022 (NOT BETWEEN).

**Solució (SQL):**

```sql
SELECT IdComanda, DataComanda
FROM Comandes
WHERE DataComanda NOT BETWEEN '2022-01-01' AND '2022-12-31'
LIMIT 10;
```

<pre>

mysql> SELECT IdComanda, DataComanda
    -> FROM Comandes
    -> WHERE DataComanda NOT BETWEEN '2022-01-01' AND '2022-12-31'
    -> LIMIT 10;
+-----------+-------------+
| IdComanda | DataComanda |
+-----------+-------------+
|     15000 | 2021-03-25  |
|     15001 | 2024-06-28  |
|     15002 | 2021-06-04  |
|     15003 | 2020-09-09  |
|     15005 | 2021-01-24  |
|     15006 | 2023-02-17  |
|     15008 | 2024-03-09  |
|     15009 | 2024-08-18  |
|     15010 | 2024-05-18  |
|     15011 | 2020-01-28  |
+-----------+-------------+
10 rows in set (0.001 sec)
</pre>

---
## Ex 39
**Enunciat:** Productes amb preu <= 8 o >= 60 (OR).

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
WHERE Preu <= 8 OR Preu >= 60
ORDER BY Preu;
```

<pre>

mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> WHERE Preu <= 8 OR Preu >= 60
    -> ORDER BY Preu;
+------------+-----------------------------+-------+
| IdProducte | NomProducte                 | Preu  |
+------------+-----------------------------+-------+
|         96 | Tomàquets pera              |  3.12 |
|          6 | seitons en vinagre          |  3.66 |
|         76 | Pomes Golden                |  3.93 |
|         84 | Iogurt natural suau         |  5.22 |
|         45 | Pebrots vermells            |  5.23 |
|         90 | Pomes Golden eco            |  7.34 |
|         42 | Musclos escabetx Penedès    |  7.88 |
|         22 | Pomes Golden Penedès        |  7.89 |
|         50 | Suc de poma Rial            | 60.31 |
|         63 | Pomes Golden clàssic        | 60.46 |
|        101 | Refresc de taronja clàssic  | 61.51 |
|         14 | Cereals de blat eco         | 61.51 |
|         80 | Mousse de xocolata          | 62.00 |
|         78 | Ketchup Penedès             | 64.01 |
|         99 | Botifarra                   | 65.20 |
|         44 | Aigua mineral               | 66.26 |
|         57 | seitons en vinagre          | 69.18 |
|         16 | Pollastre rostit            | 71.08 |
|         95 | Sardines en llauna          | 71.16 |
|        110 | Bacallà dessalat            | 71.92 |
|        111 | seitons en vinagre Raval    | 72.18 |
|         32 | Refresc de taronja          | 72.28 |
|          9 | Cereals de blat Fontdelpi   | 74.02 |
|          7 | Tònic gurmet                | 74.55 |
|         70 | Salsa de soja Montseny      | 74.59 |
|         30 | Farina de força             | 74.77 |
|        103 | Arròs bomba                 | 74.85 |
|         67 | Iogurt natural Penedès      | 75.41 |
|         75 | Salmó fumat                 | 75.67 |
|         92 | Tè negre                    | 75.69 |
|         91 | Llet sencera Mediterrani    | 75.89 |
|         66 | Ceba dolça                  | 76.08 |
|         18 | Pit de gall dindi gurmet    | 76.12 |
|         85 | Pasta espagueti             | 77.60 |
+------------+-----------------------------+-------+
34 rows in set (0.001 sec)
</pre>

---
## Ex 40
**Enunciat:** Clients que no són d'Espanya (NOT).

**Solució (SQL):**

```sql
SELECT NomClient, Pais
FROM Clients
WHERE NOT Pais = 'Espanya'
LIMIT 10;
```

<pre>
mysql> SELECT NomClient, Pais
    -> FROM Clients
    -> WHERE NOT Pais = 'Espanya'
    -> LIMIT 10;
+--------------------+----------------+
| NomClient          | Pais           |
+--------------------+----------------+
| Produits Dubois    | França         |
| Graz Feinkost      | Àustria        |
| Smit Import BV     | Països Baixos  |
| Tòquio Foods       | Japó           |
| Mayer & Söhne      | Àustria        |
| Taylor Trading Ltd | Regne Unit     |
| Davis Foods Inc.   | Estats Units   |
| Yamamoto Market    | Japó           |
| Vini di Roma       | Itàlia         |
| Vini di Milà       | Itàlia         |
+--------------------+----------------+
10 rows in set (0.000 sec)
</pre>

---
## Ex 41
**Enunciat:** Països amb clients, ordenats descendent per nom de país.

**Solució (SQL):**

```sql
SELECT DISTINCT Pais
FROM Clients
ORDER BY Pais DESC;
```

<pre>
mysql> SELECT DISTINCT Pais
    -> FROM Clients
    -> ORDER BY Pais DESC;
+----------------+
| Pais           |
+----------------+
| Suïssa         |
| Suècia         |
| Regne Unit     |
| Portugal       |
| Països Baixos  |
| Japó           |
| Itàlia         |
| França         |
| Estats Units   |
| Espanya        |
| Àustria        |
| Alemanya       |
+----------------+
12 rows in set (0.001 sec)
</pre>

---
## Ex 42
**Enunciat:** Ciutats úniques de Proveïdors (DISTINCT).

**Solució (SQL):**

```sql
SELECT DISTINCT Ciutat
FROM Proveidors
ORDER BY Ciutat;
```

<pre>
mysql> SELECT DISTINCT Ciutat
    -> FROM Proveidors
    -> ORDER BY Ciutat;
+---------------+
| Ciutat        |
+---------------+
| Amsterdam     |
| Badalona      |
| Basel         |
| Bologna       |
| Colònia       |
| Còrdova       |
| Ginebra       |
| Girona        |
| Granollers    |
| Lisboa        |
| Londres       |
| Màlaga        |
| Manchester    |
| Nantes        |
| Osaka         |
| Reus          |
| Rotterdam     |
| Sabadell      |
| Salzburg      |
| San Francisco |
| Saragossa     |
| Sevilla       |
| Tarragona     |
| Terrassa      |
| València      |
| Viena         |
+---------------+
26 rows in set (0.001 sec)

</pre>

---
## Ex 43
**Enunciat:** Top 5 països amb més clients (ORDER + LIMIT).

**Solució (SQL):**

```sql
SELECT Pais, COUNT(*) AS Num
FROM Clients
GROUP BY Pais
ORDER BY Num DESC, Pais
LIMIT 5;
```

<pre>
mysql> SELECT Pais, COUNT(*) AS Num
    -> FROM Clients
    -> GROUP BY Pais
    -> ORDER BY Num DESC, Pais
    -> LIMIT 5;
+----------------+-----+
| Pais           | Num |
+----------------+-----+
| Espanya        |  60 |
| Itàlia         |   5 |
| Països Baixos  |   5 |
| Àustria        |   4 |
| Japó           |   3 |
+----------------+-----+
5 rows in set (0.000 sec)
</pre>

---
## Ex 44
**Enunciat:** Top 5 productes més venuts per quantitat total (ORDER + LIMIT).

**Solució (SQL):**

```sql
SELECT IdProducte, SUM(Quantitat) AS Total
FROM DetallsComanda
GROUP BY IdProducte
ORDER BY Total DESC
LIMIT 5;
```

<pre>
mysql> SELECT IdProducte, SUM(Quantitat) AS Total
    -> FROM DetallsComanda
    -> GROUP BY IdProducte
    -> ORDER BY Total DESC
    -> LIMIT 5;
+------------+-------+
| IdProducte | Total |
+------------+-------+
|         90 |   108 |
|        118 |   102 |
|        109 |    96 |
|         62 |    83 |
|         32 |    78 |
+------------+-------+
5 rows in set (0.002 sec)
</pre>

---
## Ex 45
**Enunciat:** Clients el nom dels quals acaba en 'Co.'.

**Solució (SQL):**

```sql
SELECT IdClient, NomClient
FROM Clients
WHERE NomClient LIKE '% Co.';
```

<pre>
mysql> SELECT IdClient, NomClient
    -> FROM Clients
    -> WHERE NomClient LIKE '% Co.';
Empty set (0.001 sec)
</pre>

---
## Ex 46
**Enunciat:** Proveïdors amb 'Market' o 'Mercat' al nom (OR amb LIKE).

**Solució (SQL):**

```sql
SELECT IdProveidor, NomProveidor
FROM Proveidors
WHERE NomProveidor LIKE '%Market%' OR NomProveidor LIKE '%Mercat%';
```

<pre>
mysql> SELECT IdProveidor, NomProveidor
    -> FROM Proveidors
    -> WHERE NomProveidor LIKE '%Market%' OR NomProveidor LIKE '%Mercat%';
+-------------+-------------------+
| IdProveidor | NomProveidor      |
+-------------+-------------------+
|           8 | Mercats Badalona  |
|          13 | Mercats Màlaga    |
|          15 | Mercats Badalona  |
|          17 | Mercats Tarragona |
|          23 | Mercats Màlaga    |
|          35 | Miller Market     |
+-------------+-------------------+
6 rows in set (0.001 sec)
</pre>

---
## Ex 47
**Enunciat:** Empleats amb Notes no nul·les (IS NOT NULL).

**Solució (SQL):**

```sql
SELECT IdEmpleat, Nom, Cognom, Notes
FROM Empleats
WHERE Notes IS NOT NULL;
```

<pre>

mysql> SELECT IdEmpleat, Nom, Cognom, Notes
    -> FROM Empleats
    -> WHERE Notes IS NOT NULL;
+-----------+--------+--------+------------------------+
| IdEmpleat | Nom    | Cognom | Notes                  |
+-----------+--------+--------+------------------------+
|         1 | Anna   | Puig   | Director de vendes     |
|         2 | Jordi  | Soler  | Director de vendes     |
|         3 | Marta  | Ferrer | Assist. comercial      |
|         4 | Oriol  | Vila   | Representant de vendes |
|         5 | Clara  | Prats  | Assist. comercial      |
|         6 | Sergi  | Riera  | Assist. comercial      |
|         7 | Laia   | Pons   | Representant de vendes |
|         8 | Marc   | Font   | Assist. comercial      |
|         9 | Núria  | Casals | Representant de vendes |
|        10 | Pere   | Miró   | Assist. comercial      |
+-----------+--------+--------+------------------------+
10 rows in set (0.001 sec)
</pre>

---
## Ex 48
**Enunciat:** Clients per ciutat a Espanya (top 10).

**Solució (SQL):**

```sql
SELECT Ciutat, COUNT(*) AS NumClients
FROM Clients
WHERE Pais='Espanya'
GROUP BY Ciutat
ORDER BY NumClients DESC, Ciutat
LIMIT 10;
```

<pre>
mysql> SELECT Ciutat, COUNT(*) AS NumClients
    -> FROM Clients
    -> WHERE Pais='Espanya'
    -> GROUP BY Ciutat
    -> ORDER BY NumClients DESC, Ciutat
    -> LIMIT 10;
+------------+------------+
| Ciutat     | NumClients |
+------------+------------+
| Valladolid |          5 |
| Bilbao     |          4 |
| Reus       |          4 |
| Saragossa  |          4 |
| Sevilla    |          4 |
| Tarragona  |          4 |
| Barcelona  |          3 |
| Còrdova    |          3 |
| Girona     |          3 |
| Manresa    |          3 |
+------------+------------+
10 rows in set (0.001 sec)

</pre>

---
## Ex 49
**Enunciat:** Comandes per dia de 2023 (mostra dies amb >= 2 comandes).

**Solució (SQL):**

```sql
SELECT DataComanda, COUNT(*) AS Num
FROM Comandes
WHERE YEAR(DataComanda)='2023'
GROUP BY DataComanda HAVING COUNT(*) >= 2
ORDER BY Num DESC, DataComanda;
```

<pre>
mysql> SELECT DataComanda, COUNT(*) AS Num
    -> FROM Comandes
    -> WHERE YEAR(DataComanda)='2023'
    -> GROUP BY DataComanda HAVING COUNT(*) >= 2
    -> ORDER BY Num DESC, DataComanda;
Empty set (0.001 sec)
</pre>

---
## Ex 50
**Enunciat:** Productes de categoria entre 2 i 6, excepte 4 (BETWEEN i NOT IN).

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, IdCategoria
FROM Productes
WHERE IdCategoria BETWEEN 2 AND 6 AND IdCategoria NOT IN (4);
```

<pre>
mysql> SELECT IdProducte, NomProducte, IdCategoria
    -> FROM Productes
    -> WHERE IdCategoria BETWEEN 2 AND 6 AND IdCategoria NOT IN (4);
+------------+----------------------------+-------------+
| IdProducte | NomProducte                | IdCategoria |
+------------+----------------------------+-------------+
|          8 | Vinagre balsàmic           |           2 |
|          9 | Cereals de blat Fontdelpi  |           5 |
|         10 | Pit de gall dindi Selecta  |           6 |
|         12 | Pit de gall dindi Alpina   |           6 |
|         13 | Cupcakes                   |           3 |
|         14 | Cereals de blat eco        |           5 |
|         16 | Pollastre rostit           |           6 |
|         17 | Ordi perlat                |           5 |
|         18 | Pit de gall dindi gurmet   |           6 |
|         19 | Galetes d'ametlla Empordà  |           3 |
|         23 | Pit de gall dindi eco      |           6 |
|         26 | Xoriço picant              |           6 |
|         27 | Cupcakes clàssic           |           3 |
|         30 | Farina de força            |           5 |
|         31 | Salsa de soja Montseny     |           2 |
|         33 | Quinoa                     |           5 |
|         36 | Pesto Fontdelpi            |           2 |
|         37 | Ordi perlat Delta          |           5 |
|         38 | Allioli Rial               |           2 |
|         39 | Pit de gall dindi          |           6 |
|         40 | Quinoa                     |           5 |
|         41 | Mostassa antiga            |           2 |
|         43 | Pollastre rostit           |           6 |
|         46 | Caramels de mel            |           3 |
|         47 | Pit de gall dindi intens   |           6 |
|         48 | Arròs bomba Delta          |           5 |
|         49 | Salsa de soja Raval        |           2 |
|         51 | Xoriço picant Cristall     |           6 |
|         52 | Ketchup clàssic            |           2 |
|         55 | Xocolata negra 70% Rial    |           3 |
|         58 | Ketchup Fontdelpi          |           2 |
|         59 | Quinoa                     |           5 |
|         60 | Pesto Delta                |           2 |
|         61 | Botifarra Empordà          |           6 |
|         62 | Xocolata negra 70% artesà  |           3 |
|         65 | Farina de força clàssic    |           5 |
|         68 | Pasta espagueti clàssic    |           5 |
|         69 | Pollastre rostit Selecta   |           6 |
|         70 | Salsa de soja Montseny     |           2 |
|         78 | Ketchup Penedès            |           2 |
|         79 | Pesto                      |           2 |
|         80 | Mousse de xocolata         |           3 |
|         83 | Cupcakes                   |           3 |
|         85 | Pasta espagueti            |           5 |
|         86 | Mousse de xocolata intens  |           3 |
|         87 | Vinagre balsàmic           |           2 |
|         93 | Caramels de mel gurmet     |           3 |
|         97 | Torró d'avellana           |           3 |
|         98 | Roast beef tallat eco      |           6 |
|         99 | Botifarra                  |           6 |
|        100 | Cupcakes Penedès           |           3 |
|        103 | Arròs bomba                |           5 |
|        106 | Galetes d'ametlla          |           3 |
|        108 | Pit de gall dindi          |           6 |
|        112 | Vinagre balsàmic suau      |           2 |
|        113 | Cupcakes                   |           3 |
|        114 | Xocolata negra 70% Raval   |           3 |
|        115 | Roast beef tallat Penedès  |           6 |
|        117 | Xoriço picant              |           6 |
|        119 | Arròs bomba Cristall       |           5 |
|        120 | Cupcakes                   |           3 |
+------------+----------------------------+-------------+
61 rows in set (0.001 sec)
</pre>

---
## Ex 51
**Enunciat:** Comandes amb transportista diferent de 2.

**Solució (SQL):**

```sql
SELECT IdComanda, IdTransportista
FROM Comandes
WHERE IdTransportista <> 2
LIMIT 10;
```

<pre>
mysql> SELECT IdComanda, IdTransportista
    -> FROM Comandes
    -> WHERE IdTransportista <> 2
    -> LIMIT 10;
+-----------+-----------------+
| IdComanda | IdTransportista |
+-----------+-----------------+
|     15001 |               1 |
|     15002 |               1 |
|     15004 |               1 |
|     15008 |               1 |
|     15010 |               1 |
|     15013 |               1 |
|     15018 |               1 |
|     15024 |               1 |
|     15027 |               1 |
|     15036 |               1 |
+-----------+-----------------+
10 rows in set (0.001 sec)
</pre>

---
## Ex 52
**Enunciat:** Any i mes de la DataComanda amb àlies.

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, MONTH(DataComanda) AS Mes, COUNT(*) AS Num
FROM Comandes
GROUP BY Any, Mes
ORDER BY Any, Mes;
```

<pre>
mysql> SELECT YEAR(DataComanda) AS Any, MONTH(DataComanda) AS Mes, COUNT(*) AS Num
    -> FROM Comandes
    -> GROUP BY Any, Mes
    -> ORDER BY Any, Mes;
+------+------+-----+
| Any  | Mes  | Num |
+------+------+-----+
| 2020 |    1 |   1 |
| 2020 |    2 |   4 |
| 2020 |    3 |   3 |
| 2020 |    4 |   4 |
| 2020 |    5 |   5 |
| 2020 |    7 |   3 |
| 2020 |    8 |   8 |
| 2020 |    9 |   3 |
| 2020 |   10 |   3 |
| 2020 |   11 |   1 |
| 2020 |   12 |   2 |
| 2021 |    1 |   7 |
| 2021 |    2 |   3 |
| 2021 |    3 |   7 |
| 2021 |    5 |   2 |
| 2021 |    6 |   6 |
| 2021 |    7 |   3 |
| 2021 |    8 |   4 |
| 2021 |    9 |   7 |
| 2021 |   10 |   3 |
| 2021 |   11 |   4 |
| 2021 |   12 |   4 |
| 2022 |    1 |   5 |
| 2022 |    2 |   9 |
| 2022 |    3 |   4 |
| 2022 |    4 |   3 |
| 2022 |    5 |   3 |
| 2022 |    6 |   4 |
| 2022 |    7 |   4 |
| 2022 |    8 |   2 |
| 2022 |    9 |   7 |
| 2022 |   10 |   3 |
| 2022 |   11 |   5 |
| 2022 |   12 |   4 |
| 2023 |    1 |   2 |
| 2023 |    2 |   6 |
| 2023 |    3 |   1 |
| 2023 |    4 |   3 |
| 2023 |    5 |   6 |
| 2023 |    6 |   3 |
| 2023 |    7 |   2 |
| 2023 |    8 |   5 |
| 2023 |    9 |   3 |
| 2023 |   10 |   1 |
| 2023 |   11 |   2 |
| 2023 |   12 |   2 |
| 2024 |    1 |   1 |
| 2024 |    2 |   6 |
| 2024 |    3 |   3 |
| 2024 |    4 |   5 |
| 2024 |    5 |   5 |
| 2024 |    6 |   4 |
| 2024 |    7 |   1 |
| 2024 |    8 |   9 |
| 2024 |    9 |   2 |
| 2024 |   10 |   2 |
| 2024 |   12 |   6 |
+------+------+-----+
57 rows in set (0.001 sec)
</pre>

---
## Ex 53
**Enunciat:** Agrupa productes per categoria mostrant preu mínim i màxim amb àlies.

**Solució (SQL):**

```sql
SELECT IdCategoria AS Categoria, MIN(Preu) AS PreuMin, MAX(Preu) AS PreuMax
FROM Productes
GROUP BY IdCategoria
ORDER BY Categoria;
```

<pre>
mysql> SELECT IdCategoria AS Categoria, MIN(Preu) AS PreuMin, MAX(Preu) AS PreuMax
    -> FROM Productes
    -> GROUP BY IdCategoria
    -> ORDER BY Categoria;
+-----------+---------+---------+
| Categoria | PreuMin | PreuMax |
+-----------+---------+---------+
|         1 |   12.68 |   75.69 |
|         2 |   10.87 |   74.59 |
|         3 |    8.64 |   62.00 |
|         4 |    5.22 |   75.89 |
|         5 |   11.83 |   77.60 |
|         6 |   11.08 |   76.12 |
|         7 |    3.66 |   75.67 |
|         8 |    3.12 |   76.08 |
+-----------+---------+---------+
8 rows in set (0.000 sec)
</pre>

---
## Ex 54
**Enunciat:** Clients d'un conjunt de països (França, Alemanya). Ex 54.

**Solució (SQL):**

```sql
SELECT NomClient, Pais
FROM Clients
WHERE Pais IN ('França','Alemanya')
ORDER BY NomClient
LIMIT 10;
```

<pre>

mysql> SELECT NomClient, Pais
    -> FROM Clients
    -> WHERE Pais IN ('França','Alemanya')
    -> ORDER BY NomClient
    -> LIMIT 10;
+------------------+----------+
| NomClient        | Pais     |
+------------------+----------+
| Berlin Feinkost  | Alemanya |
| Produits Dubois  | França   |
| Vins de Marsella | França   |
+------------------+----------+
1 row in set (0.001 sec)
</pre>

---
## Ex 55
**Enunciat:** Top 3 productes per preu a la categoria 8.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
WHERE IdCategoria=8
ORDER BY Preu DESC
LIMIT 3;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> WHERE IdCategoria=8
    -> ORDER BY Preu DESC
    -> LIMIT 3;
+------------+-----------------------+-------+
| IdProducte | NomProducte           | Preu  |
+------------+-----------------------+-------+
|         66 | Ceba dolça            | 76.08 |
|         63 | Pomes Golden clàssic  | 60.46 |
|         74 | Pebrots vermells      | 59.94 |
+------------+-----------------------+-------+
3 rows in set (0.001 sec)
</pre>

---
## Ex 56
**Enunciat:** Comptatge de comandes per any (ex 56).

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

<pre>
mysql> SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-----+
| Any  | Num |
+------+-----+
| 2020 |  37 |
| 2021 |  50 |
| 2022 |  53 |
| 2023 |  36 |
| 2024 |  44 |
+------+-----+
5 rows in set (0.001 sec)
</pre>

---
## Ex 57
**Enunciat:** Clients d'un conjunt de països (França, Alemanya). Ex 57.

**Solució (SQL):**

```sql
SELECT NomClient, Pais
FROM Clients
WHERE Pais IN ('França','Alemanya')
ORDER BY NomClient
LIMIT 10;
```

<pre>
mysql> SELECT NomClient, Pais
    -> FROM Clients
    -> WHERE Pais IN ('Frana','Alemanya')
    -> ORDER BY NomClient
    -> LIMIT 10;
+-----------------+----------+
| NomClient       | Pais     |
+-----------------+----------+
| Berlin Feinkost | Alemanya |
+-----------------+----------+
1 row in set (0.001 sec)
</pre>

---
## Ex 58
**Enunciat:** Comptatge de comandes per any (ex 58).

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

<pre>
mysql> SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-----+
| Any  | Num |
+------+-----+
| 2020 |  37 |
| 2021 |  50 |
| 2022 |  53 |
| 2023 |  36 |
| 2024 |  44 |
+------+-----+
5 rows in set (0.000 sec)
</pre>

---
## Ex 59
**Enunciat:** Comptatge de comandes per any (ex 59).

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

<pre>
mysql> SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-----+
| Any  | Num |
+------+-----+
| 2020 |  37 |
| 2021 |  50 |
| 2022 |  53 |
| 2023 |  36 |
| 2024 |  44 |
+------+-----+
5 rows in set (0.001 sec)
</pre>

---
## Ex 60
**Enunciat:** Top 3 productes per preu a la categoria 5.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
WHERE IdCategoria=5
ORDER BY Preu DESC
LIMIT 3;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> WHERE IdCategoria=5
    -> ORDER BY Preu DESC
    -> LIMIT 3;
+------------+------------------+-------+
| IdProducte | NomProducte      | Preu  |
+------------+------------------+-------+
|         85 | Pasta espagueti  | 77.60 |
|        103 | Arròs bomba      | 74.85 |
|         30 | Farina de força  | 74.77 |
+------------+------------------+-------+
3 rows in set (0.001 sec)
</pre>

---
## Ex 61
**Enunciat:** Comptatge de comandes per any (ex 61).

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

<pre>

mysql> SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-----+
| Any  | Num |
+------+-----+
| 2020 |  37 |
| 2021 |  50 |
| 2022 |  53 |
| 2023 |  36 |
| 2024 |  44 |
+------+-----+
5 rows in set (0.001 sec)
</pre>

---
## Ex 62
**Enunciat:** Comptatge de comandes per any (ex 62).

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

<pre>
mysql> SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-----+
| Any  | Num |
+------+-----+
| 2020 |  37 |
| 2021 |  50 |
| 2022 |  53 |
| 2023 |  36 |
| 2024 |  44 |
+------+-----+
5 rows in set (0.001 sec)
</pre>

---
## Ex 63
**Enunciat:** Clients d'un conjunt de països (França, Alemanya).

**Solució (SQL):**

```sql
SELECT NomClient, Pais
FROM Clients
WHERE Pais IN ('França','Alemanya')
ORDER BY NomClient
LIMIT 10;
```

<pre>
mysql> SELECT NomClient, Pais
    -> FROM Clients
    -> WHERE Pais IN ('Frana','Alemanya')
    -> ORDER BY NomClient
    -> LIMIT 10;
+-----------------+----------+
| NomClient       | Pais     |
+-----------------+----------+
| Berlin Feinkost | Alemanya |
+-----------------+----------+
1 row in set (0.001 sec)
</pre>

---
## Ex 64
**Enunciat:** Comptatge de comandes per any.

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

<pre>
mysql> SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-----+
| Any  | Num |
+------+-----+
| 2020 |  37 |
| 2021 |  50 |
| 2022 |  53 |
| 2023 |  36 |
| 2024 |  44 |
+------+-----+
5 rows in set (0.001 sec)
</pre>

---
## Ex 65
**Enunciat:** Top 3 productes per preu a la categoria 2.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
WHERE IdCategoria=2
ORDER BY Preu DESC
LIMIT 3;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> WHERE IdCategoria=2
    -> ORDER BY Preu DESC
    -> LIMIT 3;
+------------+------------------------+-------+
| IdProducte | NomProducte            | Preu  |
+------------+------------------------+-------+
|         70 | Salsa de soja Montseny | 74.59 |
|         78 | Ketchup Penedès        | 64.01 |
|        112 | Vinagre balsàmic suau  | 58.97 |
+------------+------------------------+-------+
3 rows in set (0.001 sec)
</pre>

---
## Ex 66
**Enunciat:** Clients d'un conjunt de països (França, Alemanya).

**Solució (SQL):**

```sql
SELECT NomClient, Pais
FROM Clients
WHERE Pais IN ('França','Alemanya')
ORDER BY NomClient
LIMIT 10;
```

<pre>
mysql> SELECT NomClient, Pais
    -> FROM Clients
    -> WHERE Pais IN ('Frana','Alemanya')
    -> ORDER BY NomClient
    -> LIMIT 10;
+-----------------+----------+
| NomClient       | Pais     |
+-----------------+----------+
| Berlin Feinkost | Alemanya |
+-----------------+----------+
1 row in set (0.001 sec)

</pre>

---
## Ex 67
**Enunciat:** Comptatge de comandes per any.

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

<pre>
mysql> SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
    -> FROM Comandes
    -> GROUP BY Any
    -> ORDER BY Any;
+------+-----+
| Any  | Num |
+------+-----+
| 2020 |  37 |
| 2021 |  50 |
| 2022 |  53 |
| 2023 |  36 |
| 2024 |  44 |
+------+-----+
5 rows in set (0.001 sec)
</pre>

---
## Ex 68
**Enunciat:** Comptatge de comandes per any.

**Solució (SQL):**

```sql
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
```

<pre>
SELECT YEAR(DataComanda) AS Any, COUNT(*) AS Num
FROM Comandes
GROUP BY Any
ORDER BY Any;
</pre>

---
## Ex 69
**Enunciat:** Clients d'un conjunt de països (França, Alemanya).

**Solució (SQL):**

```sql
SELECT NomClient, Pais
FROM Clients
WHERE Pais IN ('França','Alemanya')
ORDER BY NomClient
LIMIT 10;
```

<pre>
mysql> SELECT NomClient, Pais
    -> FROM Clients
    -> WHERE Pais IN ('Frana','Alemanya')
    -> ORDER BY NomClient
    -> LIMIT 10;
+------------------+----------+
| NomClient        | Pais     |
+------------------+----------+
| Berlin Feinkost  | Alemanya |
| Produits Dubois  | França   |
| Vins de Marsella | França   |
+------------------+----------+
1 row in set (0.001 sec)
</pre>

---
## Ex 70
**Enunciat:** Top 3 productes per preu a la categoria 7.

**Solució (SQL):**

```sql
SELECT IdProducte, NomProducte, Preu
FROM Productes
WHERE IdCategoria=7
ORDER BY Preu DESC
LIMIT 3;
```

<pre>
mysql> SELECT IdProducte, NomProducte, Preu
    -> FROM Productes
    -> WHERE IdCategoria=7
    -> ORDER BY Preu DESC
    -> LIMIT 3;
+------------+--------------------------+-------+
| IdProducte | NomProducte              | Preu  |
+------------+--------------------------+-------+
|         75 | Salmó fumat              | 75.67 |
|        111 | seitons en vinagre Raval | 72.18 |
|        110 | Bacallà dessalat         | 71.92 |
+------------+--------------------------+-------+
3 rows in set (0.000 sec)
</pre>

---
