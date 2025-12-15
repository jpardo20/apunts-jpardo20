/****************************************************
 * script-alumne.js
 * Mòdul 0373 – Llenguatges de marques
 *
 * Objectiu:
 *  - Llegir dades d’un fitxer JSON
 *  - Crear automàticament una taula HTML
 *
 * IMPORTANT:
 *  - No cal entendre-ho tot
 *  - Cal completar els TODOs indicats
 ****************************************************/


/*
  TODO 1
  Busca el <tbody> de la taula HTML on afegirem les files.

  PISTA:
  A l’HTML hi ha una taula amb:
    id="taula-productes"
*/

// TODO 1: completa aquesta línia
const cosTaula = /* ??? */;



/*
  PAS 2
  Llegim el fitxer JSON amb les dades.
  Aquest codi NO s’ha de modificar.
*/

fetch("productes.json")
  .then(resposta => resposta.json())
  .then(data => {

    console.log("Dades llegides del JSON:");
    console.log(data);


    /*
      TODO 2
      Dins del JSON hi ha una llista de productes.

      El JSON té aquesta estructura general:

      {
        "productes": [ ... ]
      }

      PISTA:
      Guarda la llista de productes dins
      una variable anomenada "productes".
    */

    // TODO 2: completa aquesta línia
    const productes = /* ??? */;



    /*
      PAS 3
      Recorrem els productes un a un.
      Aquest forEach JA ESTÀ FET.
    */

    productes.forEach(producte => {


      /*
        TODO 3
        Crea una nova fila de la taula (<tr>).
      */

      // TODO 3
      const fila = /* ??? */;



      /*
        TODO 4
        Crea una cel·la (<td>) pel NOM del producte
        i posa-hi el text corresponent.
      */

      // TODO 4
      const cellaNom = /* ??? */;
      cellaNom.textContent = /* ??? */;



      /*
        TODO 5
        Afegeix la cel·la del nom dins la fila.
      */

      // TODO 5
      /* ??? */



      /*
        TODO 6
        Crea una cel·la (<td>) pel PREU.
        Mostra el preu amb el símbol €.
      */

      // TODO 6
      const cellaPreu = /* ??? */;
      cellaPreu.textContent = /* ??? */;



      /*
        TODO 7
        Afegeix la cel·la del preu dins la fila.
      */

      // TODO 7
      /* ??? */



      /*
        TODO 8
        Crea una cel·la (<td>) per la CATEGORIA
        i posa-hi el text corresponent.
      */

      // TODO 8
      const cellaCategoria = /* ??? */;
      cellaCategoria.textContent = /* ??? */;



      /*
        TODO 9
        Afegeix la cel·la de la categoria dins la fila.
      */

      // TODO 9
      /* ??? */



      /*
        TODO 10
        Afegeix la fila completa dins la taula HTML.
      */

      // TODO 10
      /* ??? */

    });

  });
