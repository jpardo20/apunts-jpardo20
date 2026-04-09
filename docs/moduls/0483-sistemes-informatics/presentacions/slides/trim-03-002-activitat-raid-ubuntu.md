# Pràctica: Creació i comprovació d’un `RAID` per software a **`Ubuntu`**  (<codijpc>0483-ae3002</codijpc>)

## Mòdul **0483 – Sistemes informàtics**

## Objectiu de la pràctica

L’objectiu d’aquesta pràctica és que sigueu capaços de:

- preparar una màquina virtual amb diversos discs virtuals,
- identificar els discs disponibles a **`Ubuntu`**,
- crear un **`RAID 1`** per software amb `mdadm`,
- formatar i muntar el volum **`RAID`**,
- comprovar que el sistema continua funcionant si falla un disc,
- i observar el procés de reconstrucció del **`RAID`**.

## Context de la pràctica

En aquesta pràctica treballareu amb una màquina virtual de **VirtualBox** amb ****`Ubuntu`****.

La màquina tindrà:

- **1 disc** per al sistema operatiu,
- **2 discs addicionals** per crear el **`RAID 1`**.

El **`RAID`** no es farà servir per arrencar el sistema, sinó com a **volum de dades**.

## Material necessari

- **VirtualBox** instal·lat.
- Una màquina virtual amb **`Ubuntu`**.
- Permisos d’administrador dins d’**`Ubuntu`**.
- Connexió a Internet dins de la màquina virtual per poder instal·lar paquets, si cal.

## Configuració inicial de la màquina virtual

Heu de comprovar que la màquina virtual té:

- 1 disc principal amb **`Ubuntu`** instal·lat.
- 2 discs virtuals addicionals, de la mateixa mida.
- Els dos discs nous han d’estar buits.

### Orientació

Podeu fer servir, per exemple:

- disc del sistema: **20 GB**
- disc 1 per al **`RAID`**: **5 GB**
- disc 2 per al **`RAID`**: **5 GB**

## Tasca a realitzar

Heu de crear un **`RAID 1`** amb els dos discs addicionals, muntar-lo a una carpeta del sistema i demostrar que continua funcionant quan un dels discs falla.

## Part 1. Identificació dels discs

Un cop dins d’**`Ubuntu`**, heu d’identificar quins discs hi ha disponibles al sistema.

### Comandes útils

```bash
lsblk
sudo fdisk -l
```

### Què heu de fer

- Identificar quin disc correspon al sistema.
- Identificar quins dos discs nous fareu servir per al **`RAID`**.
- Anotar els noms dels dispositius (per exemple **`/dev/sdb`** i **`/dev/sdc`**).

## Part 2. Preparació dels discs

Heu de preparar els dos discs nous per poder-los utilitzar al **`RAID`**.

Podeu fer-ho creant **una partició per disc** amb una eina com **`fdisk`** o **`parted`**.

### Objectiu d’aquesta part

Al final hauríeu de tenir, per exemple:

- **`/dev/sdb1`**
- **`/dev/sdc1`**

## Part 3. Instal·lació de `mdadm`

Si **`mdadm`** no està instal·lat, l’heu d’instal·lar.

```bash
sudo apt update
sudo apt install mdadm
```

## Part 4. Creació del **`RAID 1`**

Ara creareu el dispositiu **`RAID`**.

### Exemple de comanda

```bash
sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1
```

### Què heu de comprovar

Després de crear-lo, heu de revisar l’estat del **`RAID`** amb:

```bash
cat /proc/mdstat
sudo mdadm --detail /dev/md0
```

## Part 5. Creació del sistema de fitxers i muntatge

Un cop creat el **`RAID`**, heu de formatar-lo amb un sistema de fitxers i muntar-lo.

### Exemple

```bash
sudo mkfs.ext4 /dev/md0
sudo mkdir -p /mnt/raid1
sudo mount /dev/md0 /mnt/raid1
```

### Comprovació

Comproveu que el volum està muntat correctament amb:

```bash
lsblk
df -h
mount | grep md0
```

## Part 6. Prova de funcionament

Heu de crear fitxers dins del **`RAID`** per demostrar que funciona.

### Exemple

```bash
echo "Això és una prova de RAID 1" | sudo tee /mnt/raid1/prova.txt
sudo cp /etc/hostname /mnt/raid1/
ls -l /mnt/raid1
cat /mnt/raid1/prova.txt
```

## Part 7. Simulació de fallada d’un disc

Ara simulareu la fallada d’un dels discs del **`RAID`**.

### Exemple

```bash
sudo mdadm /dev/md0 --fail /dev/sdb1
sudo mdadm /dev/md0 --remove /dev/sdb1
```

### Què heu de fer després

- Tornar a consultar l’estat del **`RAID`**.
- Comprovar que el sistema continua funcionant.
- Verificar que els fitxers encara existeixen.

### Comandes útils

```bash
cat /proc/mdstat
sudo mdadm --detail /dev/md0
ls -l /mnt/raid1
cat /mnt/raid1/prova.txt
```

## Part 8. Reconstrucció del `RAID`

Per recuperar el **`RAID`**, heu de tornar a afegir un disc.

Si disposeu d’una nova partició preparada, la podeu afegir al **`RAID`**.

### Exemple

```bash
sudo mdadm /dev/md0 --add /dev/sdb1
```

### Què heu d’observar

- L’estat del **`RAID`** mentre es reconstrueix.
- El percentatge de reconstrucció.
- L’estat final un cop el **`RAID`** torna a estar sa.

### Comanda de seguiment

```bash
watch cat /proc/mdstat
```

## Part 9. Evidències que heu d’entregar

Heu de documentar la pràctica dins del vostre repositori.

## Lliurament

Dins del vostre repositori **`portafoli-dam`** (Assignement <a href="https://classroom.github.com/a/j7cZFHOP" target="about_blank">**`portafoli-dam`**</a>) i dins de la carpeta que ja teniu amb el nom **`0483-raids`** hi ha d’haver un fitxer:

**`activitat-raid-ubuntu.md`**

## Què ha de contenir el fitxer `activitat-raid-ubuntu.md`

El fitxer ha d’incloure com a mínim:

1. **Títol de la pràctica**
2. **Objectiu**
3. **Configuració de la màquina virtual**
   - nombre de discs
   - mida dels discs
4. **Identificació dels discs**
5. **Comandes utilitzades**
6. **Captures o sortides de comandes**
7. **Resultat de la creació del `RAID`**
8. **Comprovació del muntatge**
9. **Simulació de fallada**
10. **Reconstrucció del `RAID`**
11. **Conclusions finals**

## Captures o evidències obligatòries

Heu d’incloure com a mínim:

- una captura o sortida de **`lsblk`** abans de crear el **`RAID`**,
- una captura o sortida de **`cat /proc/mdstat`** després de crear-lo,
- una captura o sortida de **`mdadm --detail /dev/md0`**,
- una prova que el sistema de fitxers està muntat,
- una prova que els fitxers continuen existint després de la fallada d’un disc,
- una captura o sortida del procés de reconstrucció.

## Preguntes de reflexió final

Al final del document heu de respondre breument aquestes preguntes:

1. Què és un **`RAID 1`**?
2. Quants discs mínims necessita?
3. Quina capacitat útil ofereix respecte a la capacitat total?
4. Què passa quan falla un dels discs?
5. Per què podem continuar treballant tot i la fallada?
6. **`RAID 1`** és el mateix que una còpia de seguretat? Per què?

## Important

- No feu aquesta pràctica amb discs que continguin dades importants.
- Reviseu bé els noms dels dispositius abans d’executar les comandes.
- Un error amb el nom del disc pot esborrar informació.
- Heu d’explicar amb les vostres paraules què feu a cada pas.
- No n’hi ha prou amb enganxar comandes i captures.

## Criteris de valoració

Es valorarà:

- **Preparació correcta de la màquina virtual**
- **Identificació correcta dels discs**
- **Creació correcta del `RAID 1`**
- **Muntatge i comprovació del volum**
- **Simulació correcta de la fallada**
- **Reconstrucció del `RAID`**
- **Qualitat de la documentació al README.md**
- **Claredat de les explicacions**
- **Conclusions finals**

## Ampliació opcional

Si acabeu abans, podeu investigar una d’aquestes opcions:

- Quines diferències hi ha entre **`RAID 0`** i **`RAID 1`**?
- Com es podria fer que el **`RAID`** es muntés automàticament en reiniciar?
- Quina diferència hi ha entre **`RAID`** per software i **`RAID`** per hardware?

## Rúbrica d’avaluació

| Criteri | Excel·lent (10-9) | Notable (8-7) | Suficient (6-5) | Insuficient (4-0) | Pes |
|---|---|---|---|---|---|
| **Preparació de la màquina virtual** | La màquina virtual està correctament configurada, amb el sistema operatiu instal·lat i els discs addicionals ben afegits i preparats. | La configuració és correcta, tot i que hi ha algun petit error o manca menor. | La màquina virtual funciona, però la configuració dels discs és incompleta o poc clara. | La màquina virtual no està ben preparada o no permet fer correctament la pràctica. | **10%** |
| **Identificació dels discs i preparació prèvia** | Identifica correctament tots els discs i particions, i explica clarament quins s’utilitzen per al **`RAID`**. | Identifica correctament gairebé tots els discs, amb alguna imprecisió menor. | Identifica els discs principals, però hi ha dubtes o errors menors en la preparació. | No identifica correctament els discs o comet errors importants en aquesta fase. | **10%** |
| **Creació del **`RAID 1`** amb `mdadm`** | Crea correctament el **`RAID 1`**, utilitza bé les comandes i demostra que entén què està fent. | Crea correctament el **`RAID 1`**, amb alguna petita errada o manca d’explicació. | El **`RAID`** es crea, però hi ha errors de procediment o poca comprensió del procés. | No crea correctament el **`RAID`** o no demostra entendre el procés. | **20%** |
| **Formatació, muntatge i prova de funcionament** | Formata i munta correctament el **`RAID`**, i demostra amb evidències clares que funciona. | El format i el muntatge són correctes, amb alguna petita mancança en la comprovació. | El volum acaba funcionant, però falten comprovacions o hi ha errors menors. | No es formata o no es munta correctament, o no es demostra el funcionament. | **10%** |
| **Simulació de fallada d’un disc** | Simula correctament la fallada, comprova l’estat del **`RAID`** i demostra que el sistema continua funcionant. | Simula correctament la fallada, però la comprovació posterior és millorable. | Fa la simulació, però amb poca claredat o sense justificar bé el resultat. | No fa correctament la simulació o no en mostra les conseqüències. | **15%** |
| **Reconstrucció del **`RAID`**** | Reafegeix correctament el disc, observa el procés de reconstrucció i explica bé què està passant. | Fa correctament la reconstrucció, amb alguna manca menor en l’explicació o les evidències. | La reconstrucció es fa parcialment o amb errors menors, però es veu la idea general. | No reconstrueix correctament el **`RAID`** o no sap explicar el procés. | **15%** |
| **Documentació i evidències al fitxer** | El document està molt ben estructurat, inclou totes les captures o sortides obligatòries i és fàcil de seguir. | El document és correcte i inclou gairebé totes les evidències, amb alguna mancança menor. | El document és acceptable, però hi falten parts, captures o ordre. | El document és incomplet, confús o no inclou les evidències necessàries. | **10%** |
| **Claredat de les explicacions i conclusions finals** | Explica amb paraules pròpies què ha fet, per què ho ha fet i què ha observat. Les conclusions són clares i tècnicament correctes. | Les explicacions són bones, tot i que alguna part és massa breu o poc precisa. | Les explicacions s’entenen, però són molt esquemàtiques o poc elaborades. | Les explicacions són confuses, mínimes o semblen copiades sense comprensió. | **10%** |

### Conversió orientativa de la nota

- **9 - 10** → Excel·lent
- **7 - 8,9** → Notable
- **5 - 6,9** → Suficient
- **0 - 4,9** → Insuficient