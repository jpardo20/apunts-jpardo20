/****************************************************
 * script-profe.js
 * Mòdul 0373 – Llenguatges de marques
 *
 * Aquest script:
 *  - Llegeix les dades d’un fitxer JSON
 *  - Recorre els productes un a un
 *  - Crea automàticament les files d’una taula HTML
 *
 * IMPORTANT:
 * No cal entendre-ho tot.
 * Cal entendre QUÈ FA cada part.
 ****************************************************/


/*
  PAS 1
  Busquem la taula HTML on afegirem les dades.

  A l’HTML hi ha una taula amb:
    <table id="taula-productes">

  Dins d’aquesta taula hi ha un <tbody>
  que ara mateix està buit.
*/

const cosTaula = document.querySelector("#taula-productes tbody");


/*
  PAS 2
  Llegim el fitxer JSON amb les dades.

  fetch(...) vol dir:
  "Ves a buscar aquest fitxer".

  El fitxer ha d’estar a la mateixa carpeta
  que l’HTML i aquest script.
*/

fetch("productes.json")


  /*
    Quan el navegador ha trobat el fitxer,
    el converteix en un format que JavaScript
    pugui entendre (JSON).
  */
  .then(resposta => resposta.json())


  /*
    Ara ja tenim totes les dades dins la variable "data".

    Si miressim això al Console del navegador,
    veuríem totes les dades del JSON.
  */
  .then(data => {

    console.log("Dades llegides del JSON:");
    console.log(data);


    /*
      PAS 3
      Accedim a la llista de productes.

      Dins del JSON tenim una estructura així:

      {
        "productes": [ ... ]
      }

      Per tant, la llista està a:
      data.productes
    */
    const productes = data.productes;

    console.log("Llista de productes:");
    console.log(productes);


    /*
      PAS 4
      Recorrem els productes un a un.

      Això vol dir:
      - Primer producte
      - Segon producte
      - Tercer producte
      - etc.
    */
    productes.forEach(producte => {


      /*
        PAS 5
        Creem una fila nova de la taula.

        Això equival a:
        <tr></tr>
      */
      const fila = document.createElement("tr");


      /*
        PAS 6
        Creem la cel·la del NOM.
      */
      const cellaNom = document.createElement("td");
      cellaNom.textContent = producte.nom;


      /*
        Afegim la cel·la del nom dins la fila.
      */
      fila.appendChild(cellaNom);


      /*
        PAS 7
        Creem la cel·la del PREU.
      */
      const cellaPreu = document.createElement("td");
      cellaPreu.textContent = producte.preu + " €";


      /*
        Afegim la cel·la del preu dins la fila.
      */
      fila.appendChild(cellaPreu);


      /*
        PAS 8
        Creem la cel·la de la CATEGORIA.
      */
      const cellaCategoria = document.createElement("td");
      cellaCategoria.textContent = producte.categoria;


      /*
        Afegim la cel·la de la categoria dins la fila.
      */
      fila.appendChild(cellaCategoria);


      /*
        PAS 9
        Afegim la fila completa dins la taula HTML.

        A partir d’aquí, la fila ja es veu al navegador.
      */
      cosTaula.appendChild(fila);

    }); // Fi del forEach (productes)

  }); // Fi del fetch
