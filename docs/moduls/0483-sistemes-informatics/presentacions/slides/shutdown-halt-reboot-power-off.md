# **`shutdown`**, **`halt`**, **`reboot`** i **`poweroff`**.


Les ordres **`shutdown`**, **`halt`**, **`reboot`** i **`poweroff`** a **Linux** s'utilitzen per controlar l'estat del sistema, però difereixen en el seu comportament i casos d'ús previstos.

L'ordre **`shutdown`** és la més completa i recomanada per a l'administració de sistemes, especialment en entorns multiusuari. Programa una apagada, un inici d'alimentació o un reinici del sistema i pot enviar missatges d'advertència a tots els usuaris que han iniciat la sessió abans que es produeixi l'acció.
Es pot utilitzar amb opcions com ara -h now per aturar el sistema, **`-P now`** per apagar-lo o **`-r now`** per reiniciar.
Si s'especifica una hora, crea un fitxer **`/run/nologin`** per evitar nous inicis de sessió i realitza un apagament correcte aturant els serveis, desmuntant els sistemes de fitxers i després cridant l'ordre adequada.
També s'utilitza per cancel·lar un apagament pendent amb l'opció **`-c`**.

L'ordre **`halt`** atura totes les funcions de la CPU i redueix el sistema al seu estat més baix, però normalment deixa el sistema encès, cosa que és útil per al manteniment de baix nivell.
En sistemes moderns amb suport ACPI, **`halt`** sovint invoca automàticament **`poweroff`** si és possible, fent-lo funcionalment equivalent a **`poweroff`** en molts casos.
Es pot utilitzar amb l'opció **`-p`** o **`--poweroff`** per apagar el sistema.

L'ordre **`poweroff`** envia un senyal ACPI per apagar completament el sistema, cosa que equival aproximadament a prémer el botó d'engegada en un ordinador d'escriptori típic.
Funcionalment és similar a **`shutdown -P`** i sovint s'utilitza quan es vol un apagat complet.
En sistemes basats en **systemd**, **`systemctl poweroff`** és l'equivalent recomanat.

L'ordre **`reboot`** indica al sistema que es reiniciï, portant-lo a l'estat d'aturada i després iniciant un arrencada en calent.
Es pot utilitzar amb opcions com --**`halt`** per **`halt`** en lloc de **`reboot`** o --**`poweroff`** per apagar.
En sistemes **systemd**, **`systemctl reboot`** és l'ordre preferida.

En distribucions **Linux** modernes, especialment les que utilitzen **systemd**, **`halt`**, **`reboot`** i **`poweroff`** sovint s'implementen com a enllaços simbòlics a **`systemctl`**, que proporciona una interfície coherent amb el gestor de serveis del sistema.
Tanmateix, l'ordre **`shutdown`** continua sent la més versàtil per a operacions programades i notificacions d'usuari.
Totes aquestes ordres solen requerir privilegis de superusuari, de manera que normalment porten el prefix **`sudo`** quan no s'executen com a **`root`**.