
# Exemple de comanda

---

## Comanda #1

Data: 2026-04-23  
Client: 1  

---

## Línies de comanda


| Producte | Unitats | Preu | import dte| 21 % IVA | total|
|----------|:--------:|------:|--------:|-------:|-------:|
| Teclat   | 2      | 100€ | 10 | 21 |  180 |
| Ratolí   | 1      | 50€ | 0 | 21 |  50 |

<hr>

| Producte | Unitats | Preu | import dte| 21 % IVA | total|
|----------|--------|------:|--------:|-------:|-------:|
| Teclat   | 2      | 100€ | 10 | 21 | 180 |
|    |qtat_venuda=2<br><br><br><br> | preu_unitari=100<br><br><br>(100x2=200)<br> | descompte=10<br><br>(10% de 200 = 20)<br>(200-20=180) |iva=21<br><br><br> (180*0,21=37,8)|import_linia = 180<br><br><br>(200-20=180)|


| Producte | Unitats | Preu | import dte| 21 % IVA | total|
|----------|--------|------:|--------:|-------:|-------:|
| Ratolí   | 1      | 50€ | 0 | 21 | 50 |
|    |qtat_venuda=1<br><br><br><br> | preu_unitari=50<br><br><br>(50x1=50)<br> | descompte=0<br><br>(0%50=0)<br>(50-0=50) |iva=21<br><br><br>(50*0,21=10,5) | import_linia = 50<br><br><br>(50-0=50)|


---

## Correspondència amb camps (detalls_comanda)

| Camp |  Explicació |Valor<br>1a línia|Valor<br>2a línia|
|------|------|-----------:|--------:|
| preu_unitari | preu producte | 100 |50 |
| qtat_venuda | unitats | 2 | 1 |
| descompte | % descompte | 10 |  0 |
| iva | % IVA | 21 | 21 | 
| import_linia | resultat final | 180 |50  |

---

# Totals


| Camp | Valor | Origen | Valor def.|
|----------|--------|------:|--------:|
|base_total| 230 | suma de tots els import_linia|230 <br>180+50|
|import_iva| 48,3|calcul iva (base_total* 0,21)| 48,3<br>(180+50)*0,21|
|import_cda| 278,30|base_total+import_iva | 230+48,3|

### No el tenim en compte de moment

| Camp | Valor | Origen | Valor def.|
|----------|--------|------:|--------:|
|desc_total| 10 | suma de tots els descomptes ||


---

## Mateix càlcul en SQL

```sql
SELECT 
    preu_unitari,
    qtat_venuda,
    descompte,
    iva,
    (preu_unitari * qtat_venuda * (1 - descompte/100) * (1 + iva/100)) AS import_linia
FROM detalls_comanda;
```

---

## Idea clau

Cada camp = una part del càlcul

---


> ## Comanda #1
> 
> Data: 2026-04-23  
> Client: 1  
> 
> ---
> 
> | Producte | Unitats | Preu | import dte| 21 % IVA |total|
> |----------|:--------:|------:|--------:|-------:|-------:|
> | Teclat   | 2      | 100€ | 10 | 21 | 180|
> | Ratolí   | 1      | 50€ | 0 | 21 | 50|
> 
> ---
> Base imponible: **230 €**
> 
> 21 % iva: **48,3 €**
> 
> Total comanda: **278,30 €**


