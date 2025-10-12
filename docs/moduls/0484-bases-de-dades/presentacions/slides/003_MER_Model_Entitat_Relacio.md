
# Tema 3: Model Entitat-Relació (MER)
<br>
<br>
UD01 - Introducció a les Bases de Dades

![data-base.png](../../../../assets/img/data-base.png)

---

## Història

En [Edgar F. Codd](https://en.wikipedia.org/wiki/Edgar_F._Codd) al 1969 proposa el model relacional. Origen dels SGBD.

En [Peter Chen](https://en.wikipedia.org/wiki/Peter_Chen) el 1976 presentar el Model Entitat-Relació (MER).

És un model molt estès i potent per a la representació de les dades. Basat en la lògica i les matemàtiques.


---

## Conceptes bàsics


Se simbolitza fent ús de grafs i de taules.

Proposa l'ús de taules bidimensionals per a la representació de les dades i les seves relacions.

A principis dels setanta (70’ s), [Donald D. Chamberlin](https://en.wikipedia.org/wiki/Donald_D._Chamberlin) i [Raymond F. Boyce](https://en.wikipedia.org/wiki/Raymond_F._Boyce) (**investigadors d'IBM**) van crear un llenguatge de consultes anomenat **`SEQUEL`**. Més tard serà **`SQL`**.



---

## 3 àmbits: realitat, conceptualització i representació

![alt text](../../../../assets/img/3-ambits.png)

---

## Objectes MER - <u>`Entitat`</u>

### Entitat

objecte del món real, en un enunciat són els noms que es poden sots dividir en diferents parts,
el nom acostuma a ser en plural i
es representen amb un rectangle.


![alt text](../../../../assets/img/entitat.png)

---

## Objectes MER - Entitat exemple


![alt text](../../../../assets/img/exemple-obj-mer.png)
---

## Objectes MER - Atribut

### Atribut

Atributs o camps
són les unitats d'informació que descriuen les propietats de les entitats,
es representen com a un oval o el·lipse.

![alt text](../../../../assets/img/atribut.png)

---

## Objectes MER - Atribut exemple

els ALUMNES de l'escola tenen com a atributs
el codi,
el nom,
el nif,
la data naixement

![alt text](../../../../assets/img/atributs-exemple.png)

---

## Objectes MER - Relació

### Relacions

És l’associació de diferents entitats. Tenen com a nom un verb
es representen mitjançant un rombe

![alt text](../../../../assets/img/relacio.png)

---

## Objectes MER - Relació exemple

Els ALUMNES estan matriculats a un CURS, 

Un CURS pot tenir cap o molts ALUMNES que estiguin matriculats.

![alt text](../../../../assets/img/relacio-exemple.png)

---

## Objectes MER - Clau primària

clau primària o identificador
És l'atribut o conjunt d'atributs que identifiquen de forma única i biunívoca a cada element de l'entitat,

es representen subratllant el nom de l'atribut.

![alt text](../../../../assets/img/clau-primaria.png)


---

## Objectes MER - Clau primària exemple



A l'entitat ALUMNES, 
l'atribut codi és la clau primària, ja que identifica, sense possibilitat de repetició, ni d'error, a un alumne en concret.

![alt text](../../../../assets/img/clau-primaria-exemple.png)

---

## Objectes MER - Tipus de dades

**Tipus de dades**: és el tipus d'informació que contindrà cada atribut

A l'entitat ALUMNES
l'atribut codi és un nombre enter i correlatiu.

![alt text](../../../../assets/img/tipus-de-dades.png)


---

## Objectes MER - Domini

Domini:
és el conjunt de valors permesos per a cada atribut

A l'entitat ALUMNES,
l'atribut nom és un text de 50 caràcters.

![alt text](../../../../assets/img/tipus-de-dades-exemple.png)



---

## Clau secundària (externa)

és l'atribut d'una entitat que fa referència a la clau primària d'una altra entitat. Aquestes claus representen les relacions entre les taules.


A la relació que hi ha entre ALUMNES,  CURSOS i l'ALUMNE té com a clau externa l'identificador del curs

Conceptes bàsics

