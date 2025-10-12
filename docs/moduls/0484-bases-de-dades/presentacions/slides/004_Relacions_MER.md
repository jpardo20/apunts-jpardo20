# Pres_004_Relacions_MER

## Diapositiva 1

DAM1 MP02 BDS

UF01 - Introducció a les
Bases de Dades

Relacions (MER)

---

## Diapositiva 2

Una relació
és una associació entre dues entitats,
és un verb i
es representa mitjançant un rombe

La majoria de les relacions són entre dues entitats, tot i que també existeixen relacions entre tres o més entitats.

Una relació també pot tenir atributs.

Relacions

‹#› de 13

---

## Diapositiva 3

Un client (1) opera a molts comptes (n)
(1,n)

A un compte (1) hi operar un únic client (1)
(1,1)
de les operacions ens interessa la data.

Relacions (exemple)

data

‹#› de 13

---

## Diapositiva 4

Graus i cardinalitats de relacions

El grau d’una relació és el conjunt d’entitats que participen en una relació.

Una relació en què participen solament dues entitats és una relació de grau dos o binària.

Una relació en la qual participen tres entitats és una relació de grau tres o terciària.

‹#› de 13

---

## Diapositiva 5

Relació de grau u (reflexiva)

Només participa una entitat, també s’anomena reflexiva.

‹#› de 13

un alumne pot ser delegat d'un o molts alumnes
(1,n)
un alumne té com a delegat un i només 1 alumne (delegat)
(1:1)

---

## Diapositiva 6

Relació de grau dos (binària)	(1:1)

Relació un a un (1:1): A cada element de la 1a entitat li correspon un i solament un de la 2a.

‹#› de 13

un grup d'alumnes assisteix a una única aula
(1,1)
a una aula hi assisteix un únic grup d’alumnes
(1,n)

---

## Diapositiva 7

Relació de grau dos (binària)	 (1:N)

Relació d'un a molts (1:N): A cada element de 1a entitat li correspon un o més elements de la 2a entitat. I a cada element de la 2a entitat li correspon un i només un de la 1a entitat.

‹#› de 13

un proveïdor subministra molts articles
(1,n)
un article és subministrat per un únic proveïdor
(1,1)

---

## Diapositiva 8

Relació de grau dos (binària)	 (N:M)

Relació de molts a molts (N:M): A cada element de la 1a entitat li correspon un o molts elements de la 2a entitat i a cada element de la 2a entitat li correspon un o més elements de la 1a entitat.

‹#› de 13

un venedor ven molts articles
(1,n)
un article és venut per molts venedors
(1,m)

---

## Diapositiva 9

La cardinalitat d'una entitat serveix per conèixer el seu grau de participació en la relació, és a dir, el nombre de correspondències en les quals cada element de l'entitat intervé en la relació.

La representem entre parèntesis indicant els valors mínim i màxim. El valor 0 es posa quan la participació de l’entitat és opcional.

Cardinalitat d’una entitat

‹#› de 13

---

## Diapositiva 10

Entitat forta i feble

‹#› de 13

Entitat forta: Una entitat és forta quan no depèn de cap altra entitat per existir.

Entitat feble: Una entitat feble és una entitat que ha de definir-se mitjançant una relació de clau forana amb una altra entitat, ja que no pot ser identificada de manera única només pels seus propis atributs.És a dir que una entitat feble no té una clau primària, i fa servir una clau parcial, que es representa amb una línia discontínua.
Es representa amb un rectangle de vora doble.
Les relacions entre les entitats fortes i febles són del tipus un a molts (1:N).

---

## Diapositiva 11

‹#› de 13

Entitat forta i feble (exemple)

a càrrec

(1,1)

(0,n)

1:N

un treballador pot tenir a càrrec cap o moltes persones dependents 
(0,n)
un depenent no pot existir si no està a càrrec d'un treballador 
(1,1)

relació

---

## Diapositiva 12

En moltes relacions intervenen més de 2 entitats del món real, en les quals per conèixer la cardinalitat de cadascuna de les entitats que intervenen hem d'indicar quants elements corresponen per un element de la resta d'entitats.

Relacions de grau tres

‹#› de 13

---

## Diapositiva 13

un client d'una sucursal té un o molts comptes		(1,n)
un compte d'una sucursal té un únic client			(1,1)
un client té un compte en una única sucursal		(1,1)

Relacions de grau tres

‹#› de 13