# Exemple complet — Creació i modificació d’un repositori amb flux professional GitHub (CLI)

Aquest document mostra **pas a pas** com fer **una modificació mínima** (editar el `README.md`) seguint **un flux professional amb branques i Pull Requests**, utilitzant **exclusivament la consola de VS Code**, `git` i `gh`.

> ⚠️ El canvi és irrellevant.
> **El procés és l’objectiu d’aprenentatge.**

---

## Requisits previs

* Git instal·lat
* GitHub CLI (`gh`) instal·lat
* Sessió iniciada amb:

```bash
gh auth login
```

* VS Code amb terminal integrat

---

## PAS 1 — Estat inicial del repositori

Comprovem l’estat abans de fer res:

```bash
git status
git branch
```

Explicació:

* Som a `main`
* El repositori està net
* **Encara no treballarem a `main`**

---

## PAS 2 — Assegurar que `main` està actualitzat

Disciplina bàsica abans de crear branques:

```bash
git checkout main
git pull
```

---

## PAS 3 — Crear una branca per al canvi

Creem una branca específica per a la modificació del README:

```bash
git checkout -b docs/update-readme
```

Comprovem-ho:

```bash
git branch
```

> Ja **NO** som a `main`.

---

## PAS 4 — Modificar el `README.md`

Editem el fitxer `README.md` i hi afegim una línia, per exemple:

```md
Aquest repositori segueix un flux de treball estricte basat en GitHub que utilitza Pull Requests.
```

> El contingut no és important.
> El que importa és **com** es fa el canvi.

---

## PAS 5 — Revisar els canvis abans de fer commit

Mai es fa commit a cegues:

```bash
git status
git diff
```

---

## PAS 6 — Crear un commit net i amb una sola idea

Afegim només el fitxer modificat:

```bash
git add README.md
```

Creem el commit:

```bash
git commit -m "Docs: update README amb nota de flux de treball"
```

Criteris del commit:

* una sola idea
* missatge clar
* sense barrejar canvis

---

## PAS 7 — Pujar la branca al repositori remot

Aquest pas és **obligatori abans de crear el PR**:

```bash
git push -u origin docs/update-readme
```

Sense aquest pas, la branca **no existeix a GitHub**.

---

## PAS 8 — Crear el Pull Request amb `gh`

Creem el PR des del terminal:

```bash
gh pr create --base main --head docs/update-readme
```

Quan demani el títol, escriu **EXACTAMENT**:

```
Docs: aclarir el flux de treball a README
```

Quan demani el body, prem `e` (Edit) i introdueix el text següent:

```
## Què

Actualitza README.md per indicar explícitament que el projecte segueix un flux de treball estricte basat en GitHub.

## Per què

Fer que les regles de contribució siguin visibles i explícites per a qualsevol persona que accedeixi al repositori.

## Verificació
    ```bash
    sed -n '1,20p' README.md
    ```

```

El PR:

- **explica què s’ha fet**
- **explica per què**
- inclou una **verificació manual copiable**

---

## PAS 9 — El PR està obert (però no fusionat)

Comprovem l’estat:

```bash
gh pr status
````

Missatge clau:

> El canvi encara **NO forma part del projecte**.

---

## PAS 10 — Merge conscient del Pull Request

El PR **no es fusiona sol**. Algú pren la decisió conscient de fer el merge.

Quan el PR està revisat, fem el merge:

```bash
gh pr merge --merge
```

Criteri:

* **merge commit** (no squash)
* història traçable

---

## PAS 11 — Neteja final

Tornem a `main` i eliminem la branca:

```bash
git checkout main
git pull
git branch -d docs/update-readme
```

El repositori queda:

* net
* traçable
* coherent

---

## Missatge final clau

> Aquest procés és el mateix per un canvi trivial o per una funcionalitat gran.
>
> **El canvi no importa. El procés sí.**

Aquest exemple és el model que s’ha de seguir **fil per randa** en qualsevol modificació del repositori.
