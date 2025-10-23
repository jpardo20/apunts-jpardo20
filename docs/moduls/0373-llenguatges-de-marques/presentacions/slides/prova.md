
## Introducció

Un document HTML és un document de text pla amb marques que indiquen el tipus de contingut, com s'ha de visualitzar, etc.
---

## Editor

Per treballar amb documents HTML normalment s'utilitza un editor de programari.

Per exemple amb [Visual Studio Code]().

Obre un terminal de <kbd>cmd</kbd>

Crea una carpeta amb el nom `html`, i dins de la carpeta un fitxer `hello.html`:

```ps
mkdir html
new-item html/hello.html
```

Obre el directori `html` amb VS Code:

```shell
code hello
```

A continuació tens un exemple de document HTML:


```html
<!DOCTYPE html>
<html>
  <head>
    <title>Hello World!</title>
  </head>
  <body>
    <h1>Hello World!</h1>
    <p>Welcome to the world of HTML ...</p>
  </body>
</html>
```

Copia el contingut del document HTML al fitxer `hello.html` que has creat.

VS Code té moltes ajudes per escriure HTML tal com s'explica en aquest document: [HTML Programming](https://code.visualstudio.com/docs/languages/html).

Per exemple, si poses el punter del ratolí sobre l'element `h1` t'explica el seu significat:

![](hello-vscode.png)

Instal·la l'extensió [Live Preview (Microsoft)](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server) que et permet **visualitzar** el document en el mateix editor amb un navegador integrat:

![](vscode-preview-install.png)

Un cop has instal·lat l’extensió apareixerà una icona nova a la part superior dreta de l’editor:

![](vscode-preview-show-icon.png)

Apreta la icona "**Show Preview**" ; apareixerà un nou panell a la dreta.

Pots veure que només apareix el **text**!

![](vscode-preview.png)

Tot el marcatge ha desaparegut, no es mostra!

I el text que està entre les marques `<h1>` i `</h1>` apareix més gran i fosc.

Qué és el marcatge?

**Tot el text que està dins dels caràcters `<` i `>` són marques.**


Cada cop que modifiques el document l'HTML en el panell de l’esquerra, s'actualitza el navegador del panell de la dreta:

![](vscode-preview-show.png)


<Task>
    Modifica el contingut de l'element `p` del fitxer `hello.html`.

    <Solution>
        ```html
        <!DOCTYPE html>
        <html>
        <head>
            <title>Hello World!</title>
        </head>
        <body>
            <h1>Dolphin</h1>
            <p>Dolphins regularly rank at the top of the intelligence spectrum.</p>
        </body>
        </html>
        ```
    </Solution>
</Task>
---

## Marcatge

L'HTML té un conjunt de marques predefinides ("tags") que tenen un significat "semàntic" per als navegadors i els buscadors.

Cada __element__ està format per un "tag" d'obertura, un contingut i un "tag" de tancament.

Per exemple:

```html
<p>Hello World!</p>
```

1. Un __paràgraf__ es marca amb un "tag" `<p>` d'obertura i un "tag" de tancament `</p>`.

2. El tag de tancament `</p>` ha de tenir el mateix nom que el tag d'obertura `<p>`

3. El tag de tancament `</p>` és un tag de tancament perquè comença amb `</`

4. Entre el "tag" `<p>` d'obertura i un "tag" de tancament `</p>`, poden haver-hi molts més elements amb els seus "tags" de marcatge.

A continuació tens un exemple:

```html
<!doctype html>
<html>
  <head>
    <title>Barcelona</title>
  </head>
  <body>
    <h1>Barcelona</h1>
    <p>Barcelona és una ciutat mediterrànea i la capital de catalunya.</p>
    <h2>Sagrada Familia</h2>
    <p>La Sagrada Familia és una basílica dissenyada per Antoni Gaudí ...</p>
  </body>
</html>
```

En el codi anterior:

| Marca | Significat |
|-|-|
| `html` | Codi HTML |
| `head `| Té diferents elements que no es renderitzen al navegador com meta-informació, enllaços a fulls d’estils o scripts, etc..|
| `title` | Es mostra a la part superior del navegador, a sobre d'on normalment escrius l'URL de la pàgina que vols visitar, o a la pestanya d'aquesta pàgina. |
| `body` | El seu contingut es mostra a la finestra principal del navegador. |
| `h1` |  Capçalera ("**h**eading"), o títol, de nivell 1. |
| `p`|  Paràgraf ("**p**aragraph). |

---

## Text

Les etiquetes (o "tags") *marquen* parts del document i proporcionen un significat addicional que permet als navegadors mostrar als usuaris l'estructura adequada per a la pàgina.

### Encapçalaments

HTML té **sis** "nivells" d'encapçalaments:

```html
<!doctype html>
<html>
 <head>
   <title>Encapçalaments</title>
 </head>
 <body>
   <h1>Aquest és un encapçalament principal</h1>
   <h2>Aquest és un encapçalament de nivell 2</h2>
   <h3>Aquest és un encapçalament de nivell 3</h3>
   <h4>Aquest és un encapçalament de nivell 4</h4>
   <h5>Aquest és un encapçalament de nivell 5</h5>
   <h6>Aquest és un encapçalament de nivell 6</h6>
</body>
</html>
```

* `<h1>` s'utilitza per als encapçalaments principals
* `<h2>` s'utilitza per als subtítols
* Si hi ha més seccions sota els subtítols, s'utilitza l'element `<h3>`, i així successivament...

Els navegadors mostren el contingut dels encapçalaments en diferents mides. El contingut d'un element `<h1>` és el més gran i el contingut d'un element `<h6>` és el més petit. La mida exacta en què cada navegador mostra els encapçalaments pot variar lleugerament.

<Panel title={"Headers"}>
    <h1>&lt;h1&gt;: Heading 1</h1>
    <h2>&lt;h2&gt;: Heading 2</h2>
    <h3>&lt;h3&gt;: Heading 3</h3>
    <h4>&lt;h4&gt;: Heading 4</h4>
    <h5>&lt;h5&gt;: Heading 5</h5>
    <h6>&lt;h6&gt;: Heading 6</h6>
</Panel>

Els usuaris també poden ajustar la mida del text al seu navegador.

### Paràgrafs

<Panel title={"Paragraph"}>
    <p className="border-2 border-red-500">Un paràgraf consta d'una o més frases que formen una unitat de discurs
        autònoma. L'inici d'un paràgraf s'indica amb una línia nova.</p>

    <p className="border-2 border-red-500">El text és més fàcil d'entendre quan es divideix en unitats de text.
        Per
        exemple, un llibre pot tenir capítols. Els capítols poden tenir subtítols. Sota cada encapçalament hi haurà un o
        més
        paràgrafs.</p>
</Panel>

Per crear un paràgraf, envolta les paraules que componen el paràgraf amb una etiqueta d’obertura ` <p>` i una etiqueta de tancament `</p>`.

```html
<p>Un paràgraf consta d'una o més frases que formen una unitat de discurs autònoma. L'inici d'un paràgraf s'indica amb una línia nova.</p>

<p>El text és més fàcil d'entendre quan es divideix en unitats de text. Per exemple, un llibre pot tenir capítols. Els capítols poden tenir subtítols. Sota cada encapçalament hi haurà un o més paràgrafs.</p>
```

Per defecte, el navegador mostrarà cada paràgraf en una línia nova amb un, i només un espai, entre aquest i els paràgrafs posteriors.

### Superíndex i subíndex

```html
<p>Un byte són 8 bits i pot representar 2<sup>8</sup> nombres diferents.</p>

<p>El CO<sub>2</sub> és una mol·lècula ... .</p>
```

L’element `<sup>` s'utilitza per caràcters que han de ser superíndex, per exemple conceptes matemàtics com augmentar un nombre a una potència de 2: 2<sup>2</sup>

L’element `<sub>` s'utilitza per caràcters que han de ser subíndex, com les notes a peu de pàgina o fórmules químiques com H<sub>2</sub>O.

<Panel title={"Sup"}>
    <p>Un byte són 8 bits i pot representar 2<sup>8</sup> nombres diferents.</p>
    <p>El CO<sub>2</sub> és una mol·lècula ... .</p>
</Panel>

### Espai blanc

```html
<p>La lluna s'allunya de la Terra.</p>


<p>La lluna
s'allunya de la Terra.</p>

<p>La lluna s'allunya
                         Terra.</p>
```

Quan el navegador troba dos o més espais al costat de l'altre, només mostra un espai. De la mateixa manera, si es troba amb un salt de línia, també el tracta com un espai únic. Això es coneix com **"white space collapsing"**.

<Panel title={"White Space"}>
    <p>La lluna s'allunya de la Terra.</p>


    <p>La lluna
        s'allunya de la Terra.</p>

    <p>La lluna s'allunya
        Terra.</p>
</Panel>

### Marcatge semàntic

<Panel title={"Emphasis"}>
    <p>Aquesta joguina té moltes peces petites i, <em>potser</em>, <strong>no és apta per a nens menors de cinc
        anys.</strong></p>
</Panel>

Els tags `<strong>` i `<em>` es fan servir per donar significat *semàntic* a un troç de text.

* `<strong>` és per ressaltar el text.
* `<em>` per emfatitzar el text


```html
<p>Aquesta joguina té moltes peces petites i, <em>potser</em>, <strong>no és apta per a nens menors de cinc anys. </strong></p>
```

Un navegador mostra un `<strong>` en negreta, i un `<em>` en lletres itàliques.

Un assistent de veu apuja el to en l'`<strong>` i utilitza un to diferent en l'`<em>`.
---

## Llistes

Una llista pot ser ordenada (té números per indicar l'ordre) o no.

### Llistes ordenades

<Panel title={"Ordered List"}>
    <ol>
        <li>Chop potatoes into quarters</li>
        <li>Simmer in salted water for 15-20 minutes until tender</li>
        <li>Heat milk, butter and nutmeg</li>
        <li>Drain potatoes and mash</li>
        <li>Mix in the milk mixture</li>
    </ol>
</Panel>

Una llista ordenada es crea amb l’element `<ol>`: **o**rdered **l**ist.

```html
<ol>
 <li>Chop potatoes into quarters</li>
 <li>Simmer in salted water for 15-20  minutes until tender</li>
 <li>Heat milk, butter and nutmeg</li>
 <li>Drain potatoes and mash</li>
 <li>Mix in the milk mixture</li>
</ol>
```

Cada element de la llista es col·loca entre l'etiqueta d’obertura `<li>` i l'etiqueta de tancament `</li>` etiqueta (`li` vol dir **list item**).



Per defecte el navegador sagna les llistes.

### Llista no ordenada

<Panel title={"Unordered List"}>
    <ul>
        <li>1kg King Edward potatoes</li>
        <li>100ml milk</li>
        <li>50g salted butter</li>
        <li>Freshly grated nutmeg</li>
        <li>Salt and pepper to taste</li>
    </ul>
</Panel>

La llista no ordenada es crea amb el l’element `<ul>`: **u**nordered **l**ist.

```html
<ul>
 <li>1kg King Edward potatoes</li>
 <li>100ml milk</li>
 <li>50g salted butter</li>
 <li>Freshly grated nutmeg</li>
 <li>Salt and pepper to taste</li>
</ul>
```

### Llistes imbricades

Pots posar una segona llista dins d'un element `<li>` per crear una subllista o llista imbricada.

<Panel>
    <ul>
        <li>Mousses</li>
        <li>Pastries</li>
            <ul>
                <li>Croissant</li>
                <li>Mille-feuille</li>
                <li>Palmier</li>
                <li>Profiterole</li>
            </ul>
        <li>Tarts</li>
    </ul>
</Panel>

```html
<ul>
    <li>Mousses</li>
    <li>Pastries</li>
    <ul>
        <li>Croissant</li>
        <li>Mille-feuille</li>
        <li>Palmier</li>
        <li>Profiterole</li>
    </ul>
    <li>Tarts</li>
</ul>
```

Els navegadors mostren llistes imbricades amb un sagnat més enllà de la llista principal.

A les llistes no ordenades imbricades, el navegador normalment canviarà també l'estil de la vinyeta.
---

## Taules

Una taula HTML:

- **És un conjunt de files**, i només files.
- No hi ha columnes encara que visualment sembli que la taula és una quadrícula amb files i columnes.

<Panel title={"Table Bad"}>
    <table>
            <tr>
                <td className="border border-1">Gos</td>
                <td className="border border-1">Gat</td>
            </tr>
            <tr>
                <td className="border border-1">Tortuga</td>
            </tr>
            <tr>
                <td className="border border-1">Nutria</td>
                <td className="border border-1">Dolfí</td>
                <td className="border border-1">Sardina</td>
            </tr>
    </table>
</Panel>


Si totes les files ("row") tenen el mateix número de cel.les ("data") es veurà una cuadricula, **però si no tenen el mateix número de cel.les** no semblarà una taula.



Una fila es marca amb `<tr>` ("**t**able **r**ow") i pot tenir tantes cel.les com tu vulguis.

Les cel.les es marquen amb `<td>` ("**t**able **d**ata").

```html
<table>
    <tr>
        <td>Gos</td>
        <td>Gat</td>
    </tr>
    <tr>
        <td>Tortuga</td>
    </tr>
    <tr>
        <td>Nutria</td>
        <td>Dolfí</td>
        <td>Sardina</td>
    </tr>
</table>
```

### Table heading

L’element `<th>` s'utilitza igual que l’element `<td>` però el seu propòsit és representar l'encapçalament d'una columna o d'una fila( `th` vol dir **t**able **h**eading).

<Panel title={"Table Heading"}>
    <table>
        <tr>
            <th></th>
            <th scope="col">Saturday</th>
            <th scope="col">Sunday</th>
        </tr>
        <tr>
            <th scope="row">Tickets sold:</th>
            <td>120</td>
            <td>135</td>
        </tr>
        <tr>
            <th scope="row">Total sales:</th>
            <td>$600</td>
            <td>$675</td>
        </tr>
    </table>
</Panel>

```html
<table>
    <tr>
        <th></th>
        <th scope="col">Saturday</th>
        <th scope="col">Sunday</th>
    </tr>
    <tr>
        <th scope="row">Tickets sold:</th>
        <td>120</td>
        <td>135</td>
    </tr>
    <tr>
        <th scope="row">Total sales:</th>
        <td>$600</td>
        <td>$675</td>
    </tr>
</table>
```

Fins i tot si una cel·la no té contingut, has de fer servir un element `<td>` o `<th>` per representar la presència d'una cel·la buida, en cas contrari, la taula no es representarà correctament. (La primera cel·la de la primera fila d'aquest exemple mostra una cel·la buida.)

Utilitzar elements `<th>` per a encapçalaments ajuda a les persones que utilitzen lectors de pantalla, milloren la capacitat dels motors de cerca d'indexar les vostres pàgines i també us permeten controlar millor l'aparença de les taules quan comenceu a utilitzar CSS.

Pots utilitzar l'atribut `scope` a l’element `<th>` per indicar si és un encapçalament d'una columna o una fila. Pot prendre el  valor row per indicar un encapçalament per a una fila o col per indicar un encapçalament per a una columna.

Els navegadors solen mostrar el contingut de l’element `<th>` en negreta i al mig de la cel·la.

### Spanning columns

A vegades és possible que necessitis que les entrades d'una taula s'estiguin en més d'una columna.

<Panel title={"Table Span Col"}>
    <table>
        <tr>
            <th className="border border-1"></th>
            <th className="border border-1">9am</th>
            <th className="border border-1">10am</th>
            <th className="border border-1">11am</th>
            <th className="border border-1">12am</th>
        </tr>
        <tr>
            <th className="border border-1">Monday</th>
            <td colspan="2" className="border border-3 border-red-500">Geography</td>
            <td className="border border-1">Math</td>
            <td className="border border-1">Art</td>
        </tr>
        <tr>
            <th className="border border-1">Tuesday</th>
            <td colspan="3" className="border border-3 border-red-500">Gym</td>
            <td className="border border-1">Home Ec</td>
        </tr>
    </table>
</Panel>

L'atribut `colspan` es pot utilitzar en l'element `<th>` o `<td>` element i indica quantes columnes ha de travessar aquesta cel·la.

```html
<table>
 <tr>
   <th></th>
   <th>9am</th>
   <th>10am</th>
   <th>11am</th>
   <th>12am</th>
 </tr>
 <tr>
   <th>Monday</th>
   <td colspan="2">Geography</td>
   <td>Math</td>
   <td>Art</td>
 </tr>
 <tr>
   <th>Tuesday</th>
   <td colspan="3">Gym</td>
   <td>Home Ec</td>
 </tr>
</table>
```

En aquest exemple pots veure un horari amb cinc columnes; la primera columna conté l'encapçalament d'aquesta fila (el dia), les quatre restants representen franges horàries d'una hora.

Si mires la cel·la de la taula que conté les paraules "Geografia", veuràs que el valor de l’atribut  colspan és 2, que vol dir que la cel.la s’ha d’extendre dues columnes. A la tercera fila, "Gym" s'estén a través de tres columnes.

Pots veure que la segona i la tercera fila tenen menys elements `<td>` que el número de columnes. Això és degut a que quan una cel·la s'estén més d'una columna, les cel.les `<td>` o `<th>` que haurien d’estar al lloc de les cel·les exteses no s'inclouen al codi.

### Spanning Rows

També és possible que necessites entrades en una taula per estendre's cap avall en més d'una fila.

<Panel>
    <table>
        <tr>
            <th className="border border-1"></th>
            <th className="border border-1">ABC</th>
            <th className="border border-1">BBC</th>
            <th className="border border-1">CNN</th>
        </tr>
        <tr>
            <th className="border border-1">6pm - 7pm</th>
            <td rowspan="2" className="border border-3 border-red-500">Movie</td>
            <td className="border border-1">Comedy</td>
            <td className="border border-1">News</td>
        </tr>
        <tr>
            <th className="border border-1">7pm - 8pm</th>
            <td className="border border-1">Sport</td>
            <td className="border border-1">Current Affairs</td>
        </tr>
    </table>
</Panel>

L'atribut `rowspan` es pot utilitzar en un element `<th>` o `<td>` per indicar quantes files ha d'omplir una cel·la a la taula.


```html
<table>
 <tr>
   <th></th>
   <th>ABC</th>
   <th>BBC</th>
   <th>CNN</th>
 </tr>
 <tr>
   <th>6pm - 7pm</th>
   <td rowspan="2">Movie</td>
   <td>Comedy</td>
   <td>News</td>
 </tr>
 <tr>
   <th>7pm - 8pm</th>
   <td>Sport</td>
   <td>Current Affairs</td>
 </tr>
</table>
```

A l'exemple pots veure que ABC mostra una pel·lícula de 18 a 20 hores, mentre que els canals de la BBC i CNN mostren dos programes durant aquest període de temps (cadascun d'ells dura una hora).

Si mires l'últim element `<tr>` només conté tres elements tot i que la taula té quatre “columnes”.

Això és perquè l’element `<tr>` que mostra l’horari de la película fa servir l’atribut rowspan per extendres cap avall i ocupar la cel·la de sota.
---

## Size and Shape

Potser el primer que notes del text en una pàgina web és la seva mida i l’estil.

Per modificar l'estil del text utilitzem <Page id="-web/tailwind"/>.

A continuació tens la plantilla inicial:

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://cdn.tailwindcss.com?plugins=typography"></script>
    <title>Document - Text</title>
</head>
<body class="prose">
    <h1>Hello World!</h1>
</body>
</html>
```

Un tag pot tenir atributs (són com "paràmetres" del tag):

```html
<p class="text-center">Text centrat</p>
```

Un dels atributs més utilitzats és `class`, que permet estilitzar el contingut.

### font-size

Tailwind proporciona una família d’utilitats, [`.text-{size}`](https://tailwindcss.com/docs/font-size) amb que pots canviar la mida de la lletra de la secció marcada:

<Panel>
    <p className="text-xs">text-xs</p>
    <p className="text-sm">text-sm</p>
    <p className="text-base">text-base</p>
    <p className="text-lg">text-lg</p>
    <p className="text-xl">text-xl</p>
    <p className="text-2xl">text-2xl</p>
</Panel>

Amb les etiquetes `<h1>`, …, `<h6>` també es canvia la mida de la lletra, però per motius semàntics.

`text-` només té un objectiu visual, semànticament una `<p>` segueix sent una `<p>`.

```html
<p class="text-xs">text-xs</p>
<p class="text-sm">.text-sm</p>
<p class="text-base">text-base</p>
<p class="text-lg">text-lg</p>
<p class="text-xl">text-xl</p>
<p class="text-2xl">text-2xl</p>
```

El disseny tipografic — el format bàsic negreta, cursiva i subratllat — està cobert per unes quantes classes d’utilitat: `.italic` i `.not-italic`, i `.underline` i `.no-underline`.

### font-style

Font styling — your basic bold, italic, underline — is covered by a few different utility classes: `.italic` and `.not-italic`, and `.underline` and `.no-underline`.

<Panel>
    <p>Això és <span className="italic">text en cursiva</span> i això és <span className="underline">text subratllat</span>.</p>
    <p>També podem combinar <span className="italic underline">cursiva i subratllat</span> en el mateix fragment.</p>
</Panel>

L'element `<span>` s'utilitza per poder aplicar atributs a una part del text sense voler indicar res semanticament.

Només fas servir `.not-italic` i `.no-underline` si vols que el text tingui característiques diferents segons l’estat.

### font-weight

Amb [font-weight](https://tailwindcss.com/docs/font-weight) pots controlar la "foscor" de l’element marcat:

```html
<p class="font-light">The quick brown fox jumps over the lazy dog.</p>
<p class="font-normal">The quick brown fox jumps over the lazy dog.</p>
<p class="font-medium">The quick brown fox jumps over the lazy dog.</p>
<p class="font-semibold">The quick brown fox jumps over the lazy dog.</p>
<p class="font-bold">The quick brown fox jumps over the lazy dog.</p>
```

Not all fonts will have distinct lettering at all weights, but commonly used
web fonts should.

<Panel title={"font-weight"}>
    <p className="font-light">The quick brown fox jumps over the lazy dog.</p>
    <p className="font-normal">The quick brown fox jumps over the lazy dog.</p>
    <p className="font-medium">The quick brown fox jumps over the lazy dog.</p>
    <p className="font-semibold">The quick brown fox jumps over the lazy dog.</p>
    <p className="font-bold">The quick brown fox jumps over the lazy dog.</p>
</Panel>

### text-transform

Per modificar la forma de l'escriptura del text utilitzem [text-transform](https://tailwindcss.com/docs/text-transform).

<Panel title="The quick brown fox jumps over the lazy dog.">
    <p className="uppercase">The quick brown fox jumps over the lazy dog.</p>
    <p className="lowercase">The quick brown fox jumps over the lazy dog.</p>
    <p className="capitalize">The quick brown fox jumps over the lazy dog.</p>
    <p className="normal-case">The quick brown fox jumps over the lazy dog.</p>
</Panel>

```html
<p className="uppercase">The quick brown fox jumps over the lazy dog.</p>
<p className="lowercase">The quick brown fox jumps over the lazy dog.</p>
<p className="capitalize">The quick brown fox jumps over the lazy dog.</p>
<p className="normal-case">The quick brown fox jumps over the lazy dog.</p>
```

### Exercicis

L'atribut `class` pot tenir tantes classes d'utilitat com vulguis, només les has de separar amb un espai.

<Panel>
    <h1 class="text-xs uppercase font-light">Aus aquatiques</h1>
    <p class="text-6xl">🤗 👻</p>
</Panel>

A continuació tens el codi html:

```html
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://cdn.tailwindcss.com?plugins=typography"></script>
    <title>Test</title>
</head>
<body class="prose">
    <h1 class="text-xs uppercase font-light">Aus aquatiques</h1>
    <p class="text-6xl">🤗 👻</p>
</body>
</html>
```

<Task>
    Practica una mica pel teu compte 🦋!
</Task>
---

## Color i opacitat

Tailwind et permet ajustar el color i l’opacitat del text.

### Color

Per al color fas servir classes combinades: `.text-{color}-{level}`.

En aquest enllaç tens la paleta de colors per defecte: [Colors](https://tailwindcss.com/docs/colors)

<Panel>
    <p className="text-red-600">text-red-600</p>
    <p className="text-blue-500">text-blue-500</p>
    <p className="text-emerald-600">text-emerald-600</p>
</Panel>

Tailwind defineix 24 colors diferents per defecte en 10 nivells, des del més clar `50` i després cada múltiple de `100` fins al més fosc `900`.

```html
<p class="text-red-600">text-red-600</p>
<p class="text-blue-500">text-blue-500</p>
<p class="text-emerald-600">text-emerald-600</p>
```

Es pot fer servir qualsevol combinació de color i nivell, com `.text-yellow-400` o `.text-blue-200`.

Pots comptar que els colors per defecte s’enfosqueixen a mesura que augmenta el número.

Per exemple, `.text-blue-500` és el blau per defecte, `.text-blue-700` és un blau més fosc i `.text-blue-900` és el blau més fosc.

### Opacity

[opacity](https://tailwindcss.com/docs/opacity)

Canviar l’opacitat fa que els colors semblin més clars o més foscos.

<Panel>
    <p className="opacity-100 text-red-800">Tots hem nascut amb ales, però cada un ha d'aprendre a volar a la seva manera.</p>
    <p className="opacity-75 text-red-800">Tots hem nascut amb ales, però cada un ha d'aprendre a volar a la seva manera.</p>
    <p className="opacity-50 text-red-800">Tots hem nascut amb ales, però cada un ha d'aprendre a volar a la seva manera.</p>
    <p className="opacity-25 text-red-800">Tots hem nascut amb ales, però cada un ha d'aprendre a volar a la seva manera.</p>
</Panel>

Tailwind et proporciona `opacity-{level}`.

```html
<p class="opacity-100 text-red-800">Tots hem nascut amb ales, però cada un ha d'aprendre a volar a la seva manera.</p>
<p class="opacity-75 text-red-800">Tots hem nascut amb ales, però cada un ha d'aprendre a volar a la seva manera.</p>
<p class="opacity-50 text-red-800">Tots hem nascut amb ales, però cada un ha d'aprendre a volar a la seva manera.</p>
<p class="opacity-25 text-red-800">Tots hem nascut amb ales, però cada un ha d'aprendre a volar a la seva manera.</p>
```

La llista de nivells d’opacitat és una mica peculiar — és cada múltiple de 10 entre 0 i 100, més 5, 25, 75 i 95.
---

## Alignment and Spacing

### text-align

Pots modificar l'alineament del text tal com s'explica a [text-align](https://tailwindcss.com/docs/text-align)

<Panel title={"text-align"}>
    <p className="text-start">Seràs feliç, li va dir la vida, però primer et faré fort.</p>
    <p className="text-center">Seràs feliç, li va dir la vida, però primer et faré fort.</p>
    <p className="text-end">Seràs feliç, li va dir la vida, però primer et faré fort.</p>
</Panel>

Fixa't que és `start` i `end`, no `left` i `right`, perquè hi ha idiomes com l'àrab que s'escriu de dreta a esquerra i l'`start` seria a la dreta.

```html
<p class="text-start">Seràs feliç, li va dir la vida, però primer et faré fort.</p>
<p class="text-center">Seràs feliç, li va dir la vida, però primer et faré fort.</p>
<p class="text-end">Seràs feliç, li va dir la vida, però primer et faré fort.</p>
```


### line-height

Amb [line-height](https://tailwindcss.com/docs/line-height) pots controlar el leading, o alçada de línia, d'un element.

<Panel title={"line-height"}>
    <p className="leading-5">Topant de cap en una i altra soca, avançant d'esma pel camí de l'aigua, se'n ve la vaca tota sola. És cega.</p>
    <p className="leading-10">D'un cop de roc llançat amb massa traça, el vailet va desfer-li un ull, i en l'altre se li ha posat un tel: la vaca és cega.</p>
    <p className="leading-15">Ve a abeurar-se a la font com ans solia, mes no amb el ferm posat d'altres vegades ni amb ses companyes, no: ve tota sola.</p>
    <p className="leading-20">Ses companyes, pels cingles, per les comes, pel silenci dels prats i en la ribera, fan dringar l'esquellot mentre pasturen l'herba fresca a l'atzar, ella cauria!</p>
</Panel>

```html
<p class="leading-5">Topant de cap en una i altra soca, avançant d'esma pel camí de l'aigua, se'n ve la vaca tota sola. És cega.</p>
<p class="leading-10">D'un cop de roc llançat amb massa traça, el vailet va desfer-li un ull, i en l'altre se li ha posat un tel: la vaca és cega.</p>
<p class="leading-15">Ve a abeurar-se a la font com ans solia, mes no amb el ferm posat d'altres vegades ni amb ses companyes, no: ve tota sola.</p>
<p class="leading-20">Ses companyes, pels cingles, per les comes, pel silenci dels prats i en la ribera, fan dringar l'esquellot mentre pasturen l'herba fresca a l'atzar, ella cauria!</p>
```

Utilitza les utilitats de mida de font com `text-sm/6` i `text-lg/7` per establir la mida de la font i l'alçada de línia d'un element al mateix temps:

<Panel title={"font-size/line-height"}>
    <p className="text-xl/10">Topant de cap en una i altra soca, avançant d'esma pel camí de l'aigua, se'n ve la vaca tota sola. És cega.</p>
    <p className="text-2xl/20">D'un cop de roc llançat amb massa traça, el vailet va desfer-li un ull, i en l'altre se li ha posat un tel: la vaca és cega.</p>
</Panel>
---

## Exercicis

Has d'escriure el codi HTML que es mostra a continuació.

La solució no ha de ser exacta, però s'ha de semblar **bastant**.

### Capçalers i paràgrafs

<Task title="Basic Chemistry">

<div className="border border-3 border-info rounded p-2 mt-4 mb-4">
    <h1 class="text-xl">Química bàsica</h1>
    <p>Si tenim <span class="text-red-700">50 molècules</span> de H<sup>2</sup>O <em>potser no tenim res</em>.</p>
    <p><span class="underline">Si fos</span> H<sub>2</sub>O <strong>potser</strong> tidriem quelcom.</p>

</div>

<Solution>
    ```html
    <h1 class="text-xl">Química bàsica</h1>
    <p>Si tenim <span class="text-red-700">50 molècules</span> de H<sup>2</sup>O <em>potser no tenim res</em>.</p>
    <p><span class="underline">Si fos</span> H<sub>2</sub>O <strong>potser</strong> tidriem quelcom.</p>
    ```
</Solution>

</Task>

<Task title="Quixote">
    <h1 className="capitalize text-2xl text-center text-orange-800">Extracto de capítulos de la primera parte</h1>
    <p className="text-center italic text-gray-500"> Extracto de los capítulos que contiene esta famosa historia del valeroso caballero don Quijote de la Mancha</p>
    <h2 className="text-xl text-center">Capítulo I</h2>
    <p className="text-center italic text-gray-500"> Que trata de la condición y ejercicio del famoso y valiente hidalgo don Quijote de la Mancha</p>
    <p class="leading-5">En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, salpicón las más noches, duelos y quebrantos los sábados, lantejas los viernes, algún palomino de añadidura los domingos, consumían las tres partes de su hacienda. El resto della concluían sayo de velarte, calzas de velludo para las fiestas, con sus pantuflos de lo mesmo, y los días de entresemana se honraba con su vellorí de lo más fino.</p>

    <Solution>
        ```html
        <h1 class="capitalize text-2xl text-center text-orange-800">Extracto de capítulos de la primera parte</h1>
        <p class="text-center italic text-gray-500"> Extracto de los capítulos que contiene esta famosa historia del valeroso caballero don Quijote de la Mancha</p>
        <h2 class="text-xl text-center">Capítulo I</h2>
        <p class="text-center italic text-gray-500"> Que trata de la condición y ejercicio del famoso y valiente hidalgo don Quijote de la Mancha</p>
        <p class="leading-5">En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, salpicón las más noches, duelos y quebrantos los sábados, lantejas los viernes, algún palomino de añadidura los domingos, consumían las tres partes de su hacienda. El resto della concluían sayo de velarte, calzas de velludo para las fiestas, con sus pantuflos de lo mesmo, y los días de entresemana se honraba con su vellorí de lo más fino.</p>
        ```
    </Solution>

</Task>

<Task title="Tosa de mar">

    <h1 className="text-center text-blue-800 underline text-2xl">Tosa de Mar</h1>

    <p className="leading-5 monospace text-orange-600">De jovenets, coneixíem la costa de garbí pam a pam. De Calella a Tossa hi anàvem de qualsevol manera, amb un bot de vint pams, un tros de drap per vela, un fogó, una manta, una tenda i uns volantins per fer peix per anar menjant. Passat Sant Feliu, la costa s’eleva i fins a Tossa té una grandesa impressionant. En aquella època era encara tota plena de pins que feien una olor aspra i puixant. Ara n’han tallat molts, han acabat la cinta de la carretera i la costa sembla un animal pelat i estrany que fuig arrossegant una corda que li han lligat al coll... A l’ombra dels pins perfumats de la cala de Pola hi hem menjat moltes paellades de peix fresquíssim acabat d’agafar, i a Giberola hem fet arrossos d’una importància sensacional.</p>

    <p className="leading-10 text-orange-800">L’arròs de peix es feia molt bo, en el meu temps, a la Costa Brava. La llagosta, la gamba i el calamars, fan l’arròs fort, però una mica moll. El millor peix per fer arròs és el congre, els sublimes congrets verdosos, de carn dura i fina dels reclaus de Giberola. El sofregit de l’arròs era un paradís terrenal. Hi posàvem el marisc corresponent — el musclo, el cabrot, la pallarida — i el trinxadet d’all i de ceba amb el tomàquet tan dolç. Els perfums del sofregit, barrejats amb l’aspror dels pins i amb la salabror del mar ens feien mirar el món amb ulls enlluernats. L’arròs, posat sobre aquesta base, sortia sòlid, aeri i perfumat.</p>

    <Solution>
        ```html
        <h1 class="text-center text-blue-800 underline text-2xl">Tosa de Mar</h1>

        <p class="leading-5 monospace text-orange-600">De jovenets, coneixíem la costa de garbí pam a pam. De Calella a Tossa hi anàvem de qualsevol manera, amb un bot de vint pams, un tros de drap per vela, un fogó, una manta, una tenda i uns volantins per fer peix per anar menjant. Passat Sant Feliu, la costa s’eleva i fins a Tossa té una grandesa impressionant. En aquella època era encara tota plena de pins que feien una olor aspra i puixant. Ara n’han tallat molts, han acabat la cinta de la carretera i la costa sembla un animal pelat i estrany que fuig arrossegant una corda que li han lligat al coll... A l’ombra dels pins perfumats de la cala de Pola hi hem menjat moltes paellades de peix fresquíssim acabat d’agafar, i a Giberola hem fet arrossos d’una importància sensacional.</p>

        <p class="leading-10 text-orange-800">L’arròs de peix es feia molt bo, en el meu temps, a la Costa Brava. La llagosta, la gamba i el calamars, fan l’arròs fort, però una mica moll. El millor peix per fer arròs és el congre, els sublimes congrets verdosos, de carn dura i fina dels reclaus de Giberola. El sofregit de l’arròs era un paradís terrenal. Hi posàvem el marisc corresponent — el musclo, el cabrot, la pallarida — i el trinxadet d’all i de ceba amb el tomàquet tan dolç. Els perfums del sofregit, barrejats amb l’aspror dels pins i amb la salabror del mar ens feien mirar el món amb ulls enlluernats. L’arròs, posat sobre aquesta base, sortia sòlid, aeri i perfumat.</p>
        ```

        [Tosa de Mar](https://www.joseppladigital.cat/article.php?id=1892)
    </Solution>
</Task>


<Task title="La vaca cega">

    <p className="text-sm text-center font-black">Topant de cap en una i altra soca,</p>
    <p className="text-md text-center font-bold">avançant d'esma pel camí de l'aigua,</p>
    <p className="text-xl text-center font-semibold">se'n ve la vaca tota sola. És cega.</p>
    <p className="text-2xl text-center font-normal">D'un cop de roc llançat amb massa traça,</p>
    <p className="text-3xl text-center font-light">el vailet va buidar-li un ull, i en l'altre</p>
    <p className="text-4xl text-center font-thin">se li ha posat un tel: la vaca és cega.</p>

    <Solution>
        ```html
        <p class="text-sm text-center font-black">Topant de cap en una i altra soca,</p>
        <p class="text-md text-center font-bold">avançant d'esma pel camí de l'aigua,</p>
        <p class="text-xl text-center font-semibold">se'n ve la vaca tota sola. És cega.</p>
        <p class="text-2xl text-center font-normal">D'un cop de roc llançat amb massa traça,</p>
        <p class="text-3xl text-center font-light">el vailet va buidar-li un ull, i en l'altre</p>
        <p class="text-4xl text-center font-thin">se li ha posat un tel: la vaca és cega.</p>
        ```
    </Solution>
</Task>

<Task title="A un avariento">

    En la poesia és un dels pocs casos en que és correcte fer servir el tag `<br/>` per trencar la línia.

    <h1 className="text-2xl text-end text-violet-800"> A un avariento</h1>

    <p className="text-start text-yellow-600 leading-5">En aqueste enterramiento <br/> humilde, pobre y mezquino,<br/> yace envuelto en oro fino <br/> un hombre rico avariento.</p>

    <p className="text-center leading-15 text-purple-700"> Murió con cien mil dolores <br/> sin poderlo remediar,<br/> tan sólo por no gastar<br/> ni aun gasta malos humores.</p>

    <p className="text-end italic font-semibol text-pink-700">Francisco de Quevedo</p>


<Solution>
    ```html
        <h1 class="text-2xl text-end text-violet-800"> A un avariento</h1>

        <p class="text-start text-yellow-600 leading-5">En aqueste enterramiento <br/> humilde, pobre y mezquino,<br/> yace envuelto en oro fino <br/> un hombre rico avariento.</p>

        <p class="text-center leading-15 text-purple-700"> Murió con cien mil dolores <br/> sin poderlo remediar,<br/> tan sólo por no gastar<br/> ni aun gasta malos humores.</p>

        <p class="text-end italic font-semibol text-pink-700">Francisco de Quevedo</p>
    ```
</Solution>
</Task>

### Llista

<Task title="Aigua pesant">

    <h1>Aigua pesant</h1>

    <p>L'<strong>aigua pesant</strong> és aigua (H<sub>2</sub>O) en la qual els àtoms d'hidrogen <span className="underline">han estat substituïts pel deuteri (D)</span>. </p>

    <p>La seva fórmula química és doncs D<sub>2</sub>O.</p>

    <ul>
        <li><strong>Fórmula:</strong> D<sub>2</sub>O</li>
        <li><strong>Densitat:</strong> 1,11 g/cm<sup>3</sup></li>
        <li><strong>Massa molar: </strong>20,0276 g/mol</li>
    </ul>

    <Solution>
        ```html
        <h1>Aigua pesant</h1>

        <p>L'<strong>aigua pesant</strong> és aigua (H<sub>2</sub>O) en la qual els àtoms d'hidrogen <span class="underline">han estat substituïts pel deuteri (D)</span>. </p>

        <p>La seva fórmula química és doncs D<sub>2</sub>O.</p>

        <ul>
            <li><strong>Fórmula:</strong> D<sub>2</sub>O</li>
            <li><strong>Densitat:</strong> 1,11 g/cm<sup>3</sup></li>
            <li><strong>Massa molar: </strong>20,0276 g/mol</li>
        </ul>
        ```
    </Solution>
</Task>

<Task title="Canelons">

    <h2 className="text-center">Canelons a la catalana o de Sant Esteve</h2>

    <p>Com fer canelons a la catalana o de Sant Esteve pas a pas</p>

    <ol className="list-group  list-group-numbered">
        <li> Agafem un bol i fiquem els diferents tipus de carn. Amb l'ajuda d'una forquilla aixafem i barregem totes les carns fins a obtenir una barreja més o menys homogènia.</li>
        <li>En una fusta pelem i tallem la ceba al estil Brunoise.</li>
        <li>En una paella afegim una mica d'oli d'oliva i deixem escalfar a foc mig fins que l'oli estigui ben calent.</li>
        <li>Afegim la ceba i deixem cuinar uns 2-3 minuts a foc mig.</li>
        <li>Seguidament afegim la barreja de carns de vedella ...</li>
    </ol>

    <Solution>
        ```html
        <h2 className="text-center">Canelons a la catalana o de Sant Esteve</h2>

        <p>Com fer canelons a la catalana o de Sant Esteve pas a pas</p>

        <ol className="list-group  list-group-numbered">
            <li> Agafem un bol i fiquem els diferents tipus de carn. Amb l'ajuda d'una forquilla aixafem i barregem totes les carns fins a obtenir una barreja més o menys homogènia.</li>
            <li>En una fusta pelem i tallem la ceba al estil Brunoise.</li>
            <li>En una paella afegim una mica d'oli d'oliva i deixem escalfar a foc mig fins que l'oli estigui ben calent.</li>
            <li>Afegim la ceba i deixem cuinar uns 2-3 minuts a foc mig.</li>
            <li>Seguidament afegim la barreja de carns de vedella ...</li>
        </ol>
        ```
    </Solution>
</Task>

<Task title="Vaixell de paper">

    <h2 className="text-center">Com es fa un vaixell de paper?</h2>
    <p className="text-center underline text-green-500 font-bold">Material que necessitem:</p>
    <ul className="text-green-500 text-center list-none">
        <li>1 cartolina mida DIN A4</li>
        <li>1 llapis</li>
        <li>Goma</li>
    </ul>
    <p className="text-center underline text-red-800 font-bold text-center">Pasos a seguir per fer el vaixell</p>
    <ol className="text-red-800 text-center list-none">
        <li>Dobleguem la cartolina per la meitat</li>
        <li>Baixem els dos extrems superiors i els unim al centre</li>
        <li>Pugem l'extrem inferior formant un rectangle i tocant els dos extrems superiors</li>
        <li> Dobleguem les puntes d'aquest rectangle cap al costat contrari</li>
    </ol>


    <Solution>
        ```html
        <h2 class="text-center">Com es fa un vaixell de paper?</h2>
        <p class="text-center underline text-green-500 font-bold">Material que necessitem:</p>
        <ul class="text-green-500 text-center list-none">
            <li>1 cartolina mida DIN A4</li>
            <li>1 llapis</li>
            <li>Goma</li>
        </ul>
        <p class="text-center underline text-red-800 font-bold text-center">Pasos a seguir per fer el vaixell</p>
        <ol class="text-red-800 text-center list-none">
            <li>Dobleguem la cartolina per la meitat</li>
            <li>Baixem els dos extrems superiors i els unim al centre</li>
            <li>Pugem l'extrem inferior formant un rectangle i tocant els dos extrems superiors</li>
            <li> Dobleguem les puntes d'aquest rectangle cap al costat contrari</li>
        </ol>
        ```
    </Solution>
</Task>


### Taula

<Task title="Premium Turing">

    <p>El <span className="font-bold text-orange-500">Premi Turing</span> és considerat per molts com el <span className="underline">Premi Nobel de la Informàtica.</span></p>

    <h2 className="text-2xl">Guardonats</h2>

    <table>
        <thead>
            <tr>
                <th>Any</th>
                <th>Nom</th>
                <th>Motiu</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td className="font-light">1966</td>
                <td className="text-blue-800 font-semibold">Alan Perlis</td>
                <td className="leading-5">Per la seva influència en les àrees de tècniques de programació avançades i construcció de compiladors.</td>
            </tr>
            <tr>
                <td className="font-light">1967</td>
                <td className="text-blue-800 font-semibold">Maurice V. Wilkes</td>
                <td className="leading-5">Pel disseny i construcció d'EDSAC, el primer ordinador de programa emmagatzemament en memòria interna.</td>
            </tr>
            <tr>
                <td className="font-light">1968</td>
                <td className="text-blue-800 font-semibold">Richard Hamming</td>
                <td className="leading-5">Per la seva feina en mètodes numèrics, sistemes de codificació automàtics, i pel
                desenvolupament de codis de detecció i correcció d'errors. </td>
            </tr>
            <tr>
                <td className="font-light">1969</td>
                <td className="text-blue-800 font-semibold">Marvin Minsky</td>
                <td className="leading-5">Per les seves aportacions a intel·ligència artificial.</td>
            </tr>
            <tr>
                <td className="font-light">1970</td>
                <td className="text-blue-800 font-semibold">JH Wilkinson</td>
                <td className="leading-5">Per les seves investigacions en anàlisi numèrica per facilitar l'ús de computadors digitals  d'alta velocitat.</td>
            </tr>
        </tbody>
    </table>



    <Solution>
        ```html
        <p>El <span class="font-bold text-orange-500">Premi Turing</span> és considerat per molts com el <span  class="underline">Premi Nobel de la Informàtica.</span></p>

        <h2 class="text-2xl">Guardonats</h2>

        <table>
            <thead>
                <tr>
                    <th>Any</th>
                    <th>Nom</th>
                    <th>Motiu</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="font-light">1966</td>
                    <td class="text-blue-800 font-semibold">Alan Perlis</td>
                    <td class="leading-5">Per la seva influència en les àrees de tècniques de programació avançades i construcció de compiladors.</td>
                </tr>
                <tr>
                    <td class="font-light">1967</td>
                    <td class="text-blue-800 font-semibold">Maurice V. Wilkes</td>
                    <td class="leading-5">Pel disseny i construcció d'EDSAC, el primer ordinador de programa emmagatzemament en memòria interna.</td>
                </tr>
                <tr>
                    <td class="font-light">1968</td>
                    <td class="text-blue-800 font-semibold">Richard Hamming</td>
                    <td class="leading-5">Per la seva feina en mètodes numèrics, sistemes de codificació automàtics, i pel
                    desenvolupament de codis de detecció i correcció d'errors. </td>
                </tr>
                <tr>
                    <td class="font-light">1969</td>
                    <td class="text-blue-800 font-semibold">Marvin Minsky</td>
                    <td class="leading-5">Per les seves aportacions a intel·ligència artificial.</td>
                </tr>
                <tr>
                    <td class="font-light">1970</td>
                    <td class="text-blue-800 font-semibold">JH Wilkinson</td>
                    <td class="leading-5">Per les seves investigacions en anàlisi numèrica per facilitar l'ús de computadors digitals  d'alta velocitat.</td>
                </tr>
            </tbody>
        </table>
        ```
    </Solution>
</Task>

<Task title="Dakar">

    <h1 className="text-center text-2xl">Clasificaciones 2023 al final de la etapa 9</h1>

    <p className="text-center text-xl">Distancia total recorrida: <strong>686 km</strong></p>

    <table>
        <thead>
        <tr>
            <th scope="col">Pos.</th>
            <th scope="col">N°</th>
            <th scope="col">Piloto-Equipo</th>
            <th scope="col">Equipo</th>
            <th scope="col">Tiempo</th>
            <th scope="col"> Diferencia</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td className="text-orange-600 font-bold">1</td>
            <td>77</td>
            <td className="font-bold">(arg) LUCIANO BENAVIDES</td>
            <td>HUSQVARNA FACTORY RACING</td>
            <td className="font-mono text-gray-700">03h 18' 44''</td>
            <td className="font-mono text-red-700"></td>
        </tr>
        <tr>
            <td className="text-orange-600 font-bold">2</td>
            <td>8</td>
            <td className="font-bold">(aus) TOBY PRICE</td>
            <td>RED BULL KTM FACTORY RACING</td>
            <td className="font-mono text-gray-700">03h 19' 46''</td>
            <td className="font-mono text-red-700">+ 00h 01' 02''</td>
        </tr>
        <tr>
            <td className="text-orange-600 font-bold">3</td>
            <td>10</td>
            <td className="font-bold">(usa) SKYLER HOWES</td>
            <td>HUSQVARNA FACTORY RACING</td>
            <td className="font-mono text-gray-700">03h 21' 41''</td>
            <td className="font-mono text-red-700">+ 00h 02' 57''</td>
        </tr>
        <tr>
            <td className="font-bold">4</td>
            <td>68</td>
            <td className="font-bold">(esp) TOSHA SCHAREINA</td>
            <td>KTM RACING TEAM</td>
            <td className="font-mono text-gray-700">03h 23' 37''</td>
            <td className="font-mono text-red-700">+ 00h 04' 53''</td>
        </tr>
        <tr>
            <td className="font-bold">5</td>
            <td>17</td>
            <td className="font-bold">(fra) ROMAIN DUMONTIER</td>
            <td>TEAM DUMONTIER RACING</td>
            <td className="font-mono text-gray-700">03h 24' 54''</td>
            <td className="font-mono text-red-700">+ 00h 06' 10''</td>
        </tr>
        </tbody>
    </table>

    <Solution>
        ```html
        <h1 class="text-center text-2xl">Clasificaciones 2023 al final de la etapa 9</h1>

        <p class="text-center text-xl">Distancia total recorrida: <strong>686 km</strong></p>

        <table>
            <thead>
            <tr>
                <th scope="col">Pos.</th>
                <th scope="col">N°</th>
                <th scope="col">Piloto-Equipo</th>
                <th scope="col">Equipo</th>
                <th scope="col">Tiempo</th>
                <th scope="col"> Diferencia</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="text-orange-600 font-bold">1</td>
                <td>77</td>
                <td class="font-bold">(arg) LUCIANO BENAVIDES</td>
                <td>HUSQVARNA FACTORY RACING</td>
                <td class="font-mono text-gray-700">03h 18' 44''</td>
                <td class="font-mono text-red-700"></td>
            </tr>
            <tr>
                <td class="text-orange-600 font-bold">2</td>
                <td>8</td>
                <td class="font-bold">(aus) TOBY PRICE</td>
                <td>RED BULL KTM FACTORY RACING</td>
                <td class="font-mono text-gray-700">03h 19' 46''</td>
                <td class="font-mono text-red-700">+ 00h 01' 02''</td>
            </tr>
            <tr>
                <td class="text-orange-600 font-bold">3</td>
                <td>10</td>
                <td class="font-bold">(usa) SKYLER HOWES</td>
                <td>HUSQVARNA FACTORY RACING</td>
                <td class="font-mono text-gray-700">03h 21' 41''</td>
                <td class="font-mono text-red-700">+ 00h 02' 57''</td>
            </tr>
            <tr>
                <td class="font-bold">4</td>
                <td>68</td>
                <td class="font-bold">(esp) TOSHA SCHAREINA</td>
                <td>KTM RACING TEAM</td>
                <td class="font-mono text-gray-700">03h 23' 37''</td>
                <td class="font-mono text-red-700">+ 00h 04' 53''</td>
            </tr>
            <tr>
                <td class="font-bold">5</td>
                <td>17</td>
                <td class="font-bold">(fra) ROMAIN DUMONTIER</td>
                <td>TEAM DUMONTIER RACING</td>
                <td class="font-mono text-gray-700">03h 24' 54''</td>
                <td class="font-mono text-red-700">+ 00h 06' 10''</td>
            </tr>
            </tbody>
        </table>
        ```
    </Solution>
</Task>

<Task title="Horari">

    <h1 className="text-center text-2xl">CFGS - Desenvolupament Aplicacions Web</h1>
    <table>
        <caption>Horari del CGFS-DAW</caption>
        <tr>
            <th></th>
            <th scope="col">Dilluns</th>
            <th scope="col">Dimarts</th>
            <th scope="col">Dimecres</th>
            <th scope="col">Dijous</th>
            <th scope="col">Divendres</th>
        </tr>
        <tr>
            <th scope="col">8:30<br />9:30</th>
            <td className="border" rowspan="3">
                <div className="font-bold text-red-700">DAW-04</div>
                <div>de Mingo</div>
                <div className="italic text-gray-400">or43</div>
            </td>
            <td className="border" rowspan="2">
                <div className="font-bold text-red-700">DAW-10</div>
                <div>Alonso</div>
                <div className="italic text-gray-400">or43</div>
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <th scope="col">9:30<br />10:30</th>
            <td className="border" rowspan="2">
                <div className="font-bold text-red-700">DAW-11</div>
                <div>Maria</div>
                <div className="italic text-gray-400">or43</div>
            </td>
            <td className="border" rowspan="2">
                <div className="font-bold text-red-700">DAW-2</div>
                <div>Montesinos</div>
                <div className="italic text-gray-400">or43</div>
            </td>
            <td className="border" rowspan="2">
                <div className="font-bold text-red-700">DAW-1</div>
                <div>Verdegal</div>
                <div className="italic text-gray-400">or43</div>
            </td>
        </tr>
        <tr>
            <th scope="col">10:30<br />11:30</th>
            <td className="border">
                <div className="font-bold text-red-700">DAW-3</div>
                <div>Bardají</div>
                <div className="italic text-gray-400">or43</div>
            </td>
        </tr>
        <tr>
            <th scope="col">11:30<br />12:00</th>
            <td colspan="5"></td>
        </tr>
        <tr>
            <th scope="col">12:00<br />13:00</th>
            <td className="border" rowspan="3">
                <div className="font-bold text-red-700">DAW-3</div>
                <div>Bardají</div>
                <div className="italic text-gray-400">or43</div>
            </td>
            <td className="border">
                <div className="font-bold text-red-700">DAW-3</div>
                <div>Bardají</div>
                <div className="italic text-gray-400">or43</div>
            </td>
            <td className="border" rowspan="2">
                <div className="font-bold text-red-700">DAW-3</div>
                <div>Bardají</div>
                <div className="italic text-gray-400">or43</div>
            </td>
            <td className="border">
                <div className="font-bold text-red-700">DAW-2</div>
                <div>Montesinos</div>
                <div className="italic text-gray-400">or43</div>
            </td>
            <td className="border" rowspan="2">
                <div className="font-bold text-red-700">DAW-5</div>
            </td>
        </tr>
        <tr>
            <th scope="col">13:00<br />14:00</th>
        </tr>
    </table>


    <Solution>
        ```html
        <h1 class="text-center text-2xl">CFGS - Desenvolupament Aplicacions Web</h1>
        <table>
            <caption>Horari del CGFS-DAW</caption>
            <tr>
                <th></th>
                <th scope="col">Dilluns</th>
                <th scope="col">Dimarts</th>
                <th scope="col">Dimecres</th>
                <th scope="col">Dijous</th>
                <th scope="col">Divendres</th>
            </tr>
            <tr>
                <th scope="col">8:30<br />9:30</th>
                <td class="border" rowspan="3">
                    <div class="font-bold text-red-700">DAW-04</div>
                    <div>de Mingo</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
                <td class="border" rowspan="2">
                    <div class="font-bold text-red-700">DAW-10</div>
                    <div>Alonso</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="col">9:30<br />10:30</th>
                <td class="border" rowspan="2">
                    <div class="font-bold text-red-700">DAW-11</div>
                    <div>Maria</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
                <td class="border" rowspan="2">
                    <div class="font-bold text-red-700">DAW-2</div>
                    <div>Montesinos</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
                <td class="border" rowspan="2">
                    <div class="font-bold text-red-700">DAW-1</div>
                    <div>Verdegal</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
            </tr>
            <tr>
                <th scope="col">10:30<br />11:30</th>
                <td class="border">
                    <div class="font-bold text-red-700">DAW-3</div>
                    <div>Bardají</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
            </tr>
            <tr>
                <th scope="col">11:30<br />12:00</th>
                <td colspan="5"></td>
            </tr>
            <tr>
                <th scope="col">12:00<br />13:00</th>
                <td class="border" rowspan="3">
                    <div class="font-bold text-red-700">DAW-3</div>
                    <div>Bardají</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
                <td class="border">
                    <div class="font-bold text-red-700">DAW-3</div>
                    <div>Bardají</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
                <td class="border" rowspan="2">
                    <div class="font-bold text-red-700">DAW-3</div>
                    <div>Bardají</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
                <td class="border">
                    <div class="font-bold text-red-700">DAW-2</div>
                    <div>Montesinos</div>
                    <div class="italic text-gray-400">or43</div>
                </td>
                <td class="border" rowspan="2">
                    <div class="font-bold text-red-700">DAW-5</div>
                </td>
            </tr>
            <tr>
                <th scope="col">13:00<br />14:00</th>
            </tr>
        </table>

        ```
    </Solution>
</Task>

---

## Activitat

- Crea un document de text `index.html` amb un contingut ben maco.
- Crea un lloc web amb el document a <Page id="-web/netlify"/>

Per exemple: [https://xtec-text.netlify.app/](https://xtec-text.netlify.app/)


