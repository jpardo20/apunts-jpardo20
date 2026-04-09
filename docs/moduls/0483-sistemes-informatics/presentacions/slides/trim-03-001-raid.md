# Activitat: Explicació dels nivells RAID (<codijpc>0483-ae3001</codijpc>)

## Mòdul **0483 – Sistemes informàtics**

## Objectiu de l’activitat

L’objectiu d’aquesta activitat és que sigueu capaços de:

- entendre què és un sistema RAID,
- distingir diferents nivells de RAID,
- explicar-los amb les vostres paraules,
- comparar-ne les característiques principals,
- i justificar la informació utilitzada indicant-ne les fonts.

## Enunciat

Heu de preparar un document on expliqueu els següents nivells de RAID:

- RAID 0
- RAID 1
- RAID 5
- RAID 10
- RAID 50

No es tracta només de copiar una definició. Heu de fer una **explicació clara, entenedora i ordenada**, pensada com si l’haguéssiu d’explicar a un company o companya de classe.

A més de l’explicació individual de cada tipus de RAID, també haureu d’incloure un **quadre resum comparatiu final** on es puguin veure d’un cop d’ull les diferències entre els cinc nivells.

## Què ha d’incloure cada RAID

Per a **cada nivell RAID**, heu d’explicar com a mínim:

1. **Què és i com funciona**
   - Explicació general del nivell RAID.
   - Com es distribueixen les dades entre els discs.

2. **Nombre mínim de discs**
   - Quants discs calen com a mínim per muntar-lo.

3. **Capacitat útil**
   - Quina part de la capacitat total es pot aprofitar realment.

4. **Tolerància a fallades**
   - Quants discs poden fallar sense perdre la informació.

5. **Avantatges**
   - Quins punts forts té aquest nivell RAID.

6. **Inconvenients**
   - Quins problemes o limitacions presenta.

7. **Casos d’ús**
   - En quines situacions podria tenir sentit utilitzar-lo.

## Quadre resum comparatiu obligatori

Al final del document heu d’afegir un **quadre resum** comparant:

- RAID 0
- RAID 1
- RAID 5
- RAID 10
- RAID 50

En aquest quadre heu d’incloure les característiques que considereu més importants o útils per comparar-los.

### Alguns exemples de característiques que podeu incloure

- nombre mínim de discs,
- capacitat útil,
- tolerància a fallades,
- rendiment,
- nivell de seguretat,
- complexitat,
- cost,
- casos d’ús.

**No és obligatori que siguin exactament aquestes**, però el quadre ha de servir perquè es vegin clarament les diferències entre els cinc tipus de RAID.

## Apartat obligatori de fonts d’informació

Al final del document heu d’afegir un apartat titulat:

## Fonts d’informació

En aquest apartat heu d’indicar **d’on heu tret la informació**.

### Normes sobre les fonts

- Heu d’incloure **com a mínim 2 fonts**.
- Les fonts han de ser **fiables i específiques**.
- No n’hi ha prou amb posar només “Google” o “Wikipedia”.
- Heu d’indicar l’**adreça completa** de la pàgina consultada.
- Si heu utilitzat vídeos, també els heu d’indicar.
- Si heu consultat més d’una font per a un mateix RAID, millor.

### Exemple de com citar una font

- Boolean World: `https://www.booleanworld.com/raid-levels-explained/`
- Wikipedia – Parity bit: `https://en.wikipedia.org/wiki/Parity_bit#RAID_array`

## Format de lliurament

- Document en **Markdown**, PDF o text ben estructurat.
- Extensió orientativa: entre **2 i 4 pàgines**.
- El document ha de tenir:
  - títol,
  - apartats clars,
  - redacció pròpia,
  - quadre resum final,
  - i fonts finals.

## Important

- **No copieu i enganxeu** sense entendre el contingut.
- Si copieu fragments literalment, s’hauran de posar entre cometes i indicar clarament la font.
- Es valorarà especialment que:
  - la informació sigui clara,
  - estigui ben organitzada,
  - el quadre comparatiu sigui útil,
  - i s’expliqui amb paraules pròpies.

## Estructura recomanada

Podeu seguir aquest model:

```markdown
# RAID 0
## Funcionament
...
## Nombre mínim de discs
...
## Capacitat útil
...
## Tolerància a fallades
...
## Avantatges
...
## Inconvenients
...
## Casos d’ús
...

# RAID 1
...

# RAID 5
...

# RAID 10
...

# RAID 50
...

# Quadre resum comparatiu
| Característica | RAID 0 | RAID 1 | RAID 5 | RAID 10 | RAID 50 |
|---|---|---|---|---|---|
| ... | ... | ... | ... | ... | ... |

# Fonts d’informació
- ...
- ...
- ...

```

## Lliurament 

Cal que en el vostre reposiori **`portafoli-dam`** creu una carpeta amb el nom **`0483-raids`** i que dins afegiu un fitxer README.md amb tot el que us demano.

## Criteris de valoració

Es valorarà:

- **Comprensió tècnica** del funcionament dels RAID.
- **Claredat de l’explicació**.
- **Capacitat de comparar els diferents nivells RAID**.
- **Correcció del vocabulari tècnic**.
- **Bon ús de les fonts**.
- **Presentació i estructura del document**.

## Rúbrica d’avaluació

| Criteri | Excel·lent (10-9) | Notable (8-7) | Suficient (6-5) | Insuficient (4-0) | Pes |
|---|---|---|---|---|---|
| **Comprensió tècnica dels RAID** | Explica amb molta claredat i precisió tots els nivells RAID demanats. No hi ha errors conceptuals. | Explica correctament gairebé tots els nivells RAID, amb algun petit error o manca de precisió. | Explica els nivells principals, però amb diverses simplificacions o errors menors. | Hi ha errors conceptuals importants o falten explicacions essencials. | **30%** |
| **Explicació de les característiques de cada RAID** | Per a cada RAID inclou tots els apartats demanats: funcionament, discs mínims, capacitat útil, tolerància, avantatges, inconvenients i casos d’ús, ben desenvolupats. | Inclou gairebé tots els apartats demanats, amb algun punt poc desenvolupat. | Inclou els apartats bàsics, però en falten alguns o estan massa breus. | Falten diversos apartats importants o la informació és molt incompleta. | **20%** |
| **Quadre resum comparatiu** | El quadre és molt clar, útil i ben organitzat. Permet comparar fàcilment els cinc tipus de RAID amb criteris rellevants. | El quadre és correcte i permet comparar els RAID, tot i que podria ser més clar o complet. | El quadre hi és, però és poc clar, massa simple o amb criteris poc útils. | No hi ha quadre, o és molt deficient i no permet fer una comparació real. | **20%** |
| **Ús de fonts d’informació** | Inclou 2 o més fonts fiables, ben escollides i ben indicades. Es veu que la informació s’ha contrastat. | Inclou fonts suficients i correctes, tot i que podrien estar millor seleccionades o presentades. | Inclou poques fonts o algunes són massa generals, però compleix mínimament. | No indica les fonts correctament, en posa massa poques o no són adequades. | **10%** |
| **Redacció pròpia i claredat de l’expressió** | El text està redactat amb paraules pròpies, és clar, ordenat i fàcil d’entendre. | El text és bastant clar i ordenat, amb bona redacció general. | El text s’entén, però és poc fluid, massa esquemàtic o amb fragments poc elaborats. | El text és confús, desordenat o sembla copiat sense reelaboració. | **10%** |
| **Presentació i estructura del document** | El document està molt ben presentat, amb bona estructura, apartats clars i format correcte en Markdown. | La presentació és correcta i l’estructura és bona, amb pocs errors de format. | La presentació és acceptable, però hi ha mancances d’ordre o de format. | El document està mal estructurat o presenta molts errors de format. | **10%** |

### Conversió orientativa de la nota

- **9,0 - 10,0** → Excel·lent
- **7,0 -  8,9** → Notable
- **5,0 -  6,9** → Suficient
- **0,0 -  4,9** → Insuficient