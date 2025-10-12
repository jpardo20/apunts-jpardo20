# Pres_005_Claus_MER

## Diapositiva 1

DAM1 MP02 BDS

UF01 - Introducció a les
Bases de Dades

Claus (MER)

---

## Diapositiva 2

La clau primària o identificador:
és el conjunt d'atributs que identifiquen de forma única a cada registre d'una entitat
Normalment s'utilitzen codis, referències, dates (quan no hi hagi dues de repetides)...
no utilitzar:
noms,
descripcions,
ni qualsevol altre conjunt d'alfanumèrics

Claus primàries
(PK - Primary Key)

‹#› de 12

---

## Diapositiva 3

Una clau alternativa és un atribut que és alternatiu a la clau primària, però pot no identificar únicament a un registre.

Serveix per identificar noms, descripcions, adreces...

Claus alternatives

‹#› de 12

---

## Diapositiva 4

És l’atribut o conjunt d’atributs d’una entitat que fan referència a  la clau primària d’una altra entitat.

Les claus secundàries es troben reflectides a les cardinalitats de les relacions en el model entitat-relació.

Claus Secundàries(FK - Foreing Key)

‹#› de 12

---

## Diapositiva 5

A una relació 1:N, l’entitat que té com a cardinalitat N és la que té la clau secundària.
En un curs hi ha molts alumnes
(1,n)
un alumne està només en un curs
(1,1)

Claus secundàriesRelacions 1:N 	 					  (1 de 2)

‹#› de 12

---

## Diapositiva 6

Claus secundàries
Relacions 1:N 	 					  (2 de 2)

CURSOS
Codi, descripció del curs, durada

ALUMNES
DNI, Nom, IdCurs

‹#› de 12

---

## Diapositiva 7

Claus secundàries
Relacions 1:N 	 					  (2 de 2)

CURSOS

‹#› de 12

ALUMNES

---

## Diapositiva 8

A relacions N:M, generen una taula que té com a nom el nom de les dues taules i que conté les claus primàries de les dues taules més els camps de la relació (si s’escau).

Claus secundàries
Relacions N:M	 					  (1 de 3)

‹#› de 12

---

## Diapositiva 9

Claus secundàries
Relacions N:M	 					  (3 de 3)

‹#› de 12

CARRETERES
CodiCarretera, distància, nivell de perillositat.
 TERMES MUNICIPALS
CodiTerme, nom, provincia.
 CARRETERESTERMESMUNICIPALS
IdCarretera, CodiTerme,

---

## Diapositiva 10

Claus secundàries
Relacions 1:N 	 					  (2 de 2)

CARRETERES

‹#› de 12

TERMESMUNICIPALS

---

## Diapositiva 11

Claus secundàries
Relacions 1:N 	 					  (2 de 2)

CARRETERESTERMESMUNICIPALS

‹#› de 12

---

## Diapositiva 12

Una carretera passa per un o més termes municipals
(1,n)
Per un terme municipal, passen una o més carreteres
interessa conèixer el rang de km de cada municipi, km d'entrada i km de sortida.
(1,n)

Claus secundàries
Relacions N:M	 					  (2 de 3)

‹#› de 12

---

## Diapositiva 13

Claus secundàries
Relacions N:M	 					  (3 de 3)

‹#› de 12

CARRETERES
CodiCarretera, distància, nivell de perillositat.
 TERMES MUNICIPALS
CodiTerme, nom, població.
 CARRETERESTERMESMUNICIPALS
IdCarretera, CodiTerme, Km_inici, Km_final

---

## Diapositiva 14

Aquestes relacions generen una taula amb les claus primàries de les taules que intervenen en la relació.

Tots els identificadors són secundaris.

Són primaris els identificadors de les taules que aporten un molts a la relació.

Claus secundàries
Relacions de grau 3 o més	 		(1 de 3)

‹#› de 12

---

## Diapositiva 15

Un alumne està matriculat en un mòdul en cap o en un curs. 				(0,1)
Un alumne en un curs està matriculat en cap o en més d’un mòdul.		(0,m)
Un curs, en un mòdul té matriculats com a mínim a un alumne.				(1,n)

Claus secundàries
Relacions de grau 3 o més	 		(2 de 3)

‹#› de 12

---

## Diapositiva 16

ALUMNES
CodiAlumne, nom, adressa, telefon
CURSOS
CodiCurs, nom
MODULS
CodiModul, nom, numHores
MATRICULES
IdAlumne, IdModul, IdCurs, nota

Claus secundàries
Relacions de grau 3 o més	 		(3 de 3)

‹#› de 12

---

## Diapositiva 17

TRADUCCIÓ MER a Model relacional

‹#› de 12