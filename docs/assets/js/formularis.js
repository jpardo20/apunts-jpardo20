// Clau secreta per a la signatura dels fitxers temporals i finals.
// IMPORTANT: està al client, serveix per detectar canvis bàsics, no és seguretat criptogràfica forta.
const TMP_SECRET = "0483_TMP_SECRET_form_virtualitzacio_cli_docker_v1";

// Recorda de quin alumne prové el fitxer temporal carregat (si n'hi ha)
let LOADED_FILE_OWNER_ID = null;

function simpleHash(str) {
    // Hash senzill tipus DJB2 modificat (només per integritat bàsica)
    let hash = 5381;
    for (let i = 0; i < str.length; i++) {
        hash = ((hash << 5) + hash) ^ str.charCodeAt(i); // hash * 33 ^ c
    }
    return (hash >>> 0).toString(16);
}

function computeSignature(idAlumne, answers) {
    const base = JSON.stringify({ idAlumne, answers });
    return simpleHash(base + TMP_SECRET);
}

function loadAlumnes() {
    const select = document.getElementById("alumne");
    fetch("./alumnes/dades_alumnes.json")
        .then(resp => resp.json())
        .then(data => {
            let alumnesArray = [];

            if (Array.isArray(data)) {
                alumnesArray = data;
            } else if (data && Array.isArray(data.alumnes)) {
                // alumnes pot ser un array d'arrays
                alumnesArray = data.alumnes.flat();
            }

            if (!Array.isArray(alumnesArray) || alumnesArray.length === 0) {
                throw new Error("No s'han trobat alumnes a dades_alumnes.json");
            }

            alumnesArray.forEach((item, idx) => {
                const id =
                    item.email ||
                    (item.firstname && item.lastname ? (item.firstname + "." + item.lastname + "@example.local") : null) ||
                    String(idx + 1);

                const nom =
                    (item.firstname && item.lastname
                        ? (item.firstname + " " + item.lastname)
                        : (item.firstname || item.lastname || item.nom_complet || item.name || id));

                const opt = document.createElement("option");
                opt.value = id;
                opt.textContent = nom + (item.email ? " (" + item.email + ")" : "");
                select.appendChild(opt);
            });
        })
        .catch(err => {
            console.error("Error carregant dades_alumnes.json:", err);
            const status = document.getElementById("status-message");
            status.textContent = "No s’ha pogut carregar la llista d’alumnes des de ./alumnes/dades_alumnes.json. Revisa la ruta/fitxer.";
            status.className = "error";
        });
}

function getQuestions() {
    return Array.from(document.querySelectorAll(".question"));
}

function isQuestionAnswered(qEl) {
    const type = qEl.getAttribute("data-type");
    const qid = qEl.getAttribute("data-question-id");

    if (!qid) return true; // per si de cas

    if (type === "single" || type === "tf") {
        const inputs = qEl.querySelectorAll('input[type="radio"][name="' + qid + '"]');
        return Array.from(inputs).some(inp => inp.checked);
    } else if (type === "multi") {
        const inputs = qEl.querySelectorAll('input[type="checkbox"][name="' + qid + '"]');
        return Array.from(inputs).some(inp => inp.checked);
    } else if (type === "open") {
        const field = qEl.querySelector('textarea[name="' + qid + '"], input[type="text"][name="' + qid + '"]');
        return field && field.value.trim().length > 0;
    }

    return true;
}

function collectAnswers() {
    const questions = getQuestions();
    const answers = {};

    questions.forEach(qEl => {
        const type = qEl.getAttribute("data-type");
        const qid = qEl.getAttribute("data-question-id");
        if (!qid) return;

        if (type === "single" || type === "tf") {
            const checked = qEl.querySelector('input[type="radio"][name="' + qid + '"]:checked');
            answers[qid] = {
                type,
                value: checked ? checked.value : null
            };
        } else if (type === "multi") {
            const checked = Array.from(qEl.querySelectorAll('input[type="checkbox"][name="' + qid + '"]:checked'))
                .map(inp => inp.value);
            answers[qid] = {
                type,
                value: checked
            };
        } else if (type === "open") {
            const field = qEl.querySelector('textarea[name="' + qid + '"], input[type="text"][name="' + qid + '"]');
            answers[qid] = {
                type,
                value: field ? field.value : ""
            };
        }
    });

    return answers;
}

function applyAnswers(data) {
    const answers = data.answers || {};
    const questions = getQuestions();

    questions.forEach(qEl => {
        const qid = qEl.getAttribute("data-question-id");
        const type = qEl.getAttribute("data-type");
        if (!qid || !(qid in answers)) return;

        const ans = answers[qid];
        const val = ans.value;

        if (type === "single" || type === "tf") {
            const inputs = qEl.querySelectorAll('input[type="radio"][name="' + qid + '"]');
            inputs.forEach(inp => {
                inp.checked = (val === inp.value);
            });
        } else if (type === "multi") {
            const inputs = qEl.querySelectorAll('input[type="checkbox"][name="' + qid + '"]');
            inputs.forEach(inp => {
                inp.checked = Array.isArray(val) && val.includes(inp.value);
            });
        } else if (type === "open") {
            const field = qEl.querySelector('textarea[name="' + qid + '"], input[type="text"][name="' + qid + '"]');
            if (field) field.value = (typeof val === "string" ? val : "");
        }
    });

    // Intentem assignar l'alumne si hi ha idAlumne
    if (data.idAlumne) {
        const select = document.getElementById("alumne");
        select.value = data.idAlumne;
    }
}

function updateProgress() {
    const questions = getQuestions().filter(qEl => qEl.getAttribute("data-required") === "true");
    const total = questions.length;
    if (total === 0) return;

    let answered = 0;
    questions.forEach(qEl => {
        const ans = isQuestionAnswered(qEl);
        if (ans) answered++;
    });

    const percent = Math.round((answered / total) * 100);
    const bar = document.getElementById("progress-bar");
    const text = document.getElementById("progress-text");

    bar.style.width = percent + "%";
    text.textContent = percent + "%";
}

function markUnansweredQuestions() {
    const questions = getQuestions().filter(qEl => qEl.getAttribute("data-required") === "true");
    let firstUnanswered = null;

    questions.forEach(qEl => {
        if (!isQuestionAnswered(qEl)) {
            qEl.classList.add("unanswered");
            if (!firstUnanswered) firstUnanswered = qEl;
        } else {
            qEl.classList.remove("unanswered");
        }
    });

    if (firstUnanswered) {
        firstUnanswered.scrollIntoView({ behavior: "smooth", block: "center" });
    }
}

function validateBeforeFinal() {
    const select = document.getElementById("alumne");
    const idAlumne = select.value;

    const status = document.getElementById("status-message");
    status.className = "";
    status.textContent = "";

    let ok = true;
    let messages = [];

    if (!idAlumne) {
        ok = false;
        messages.push("Has de seleccionar el teu nom a la llista d’alumnes.");
        select.classList.add("unanswered");
    } else {
        select.classList.remove("unanswered");
    }

    const questions = getQuestions().filter(qEl => qEl.getAttribute("data-required") === "true");
    const unanswered = questions.filter(qEl => !isQuestionAnswered(qEl));

    if (unanswered.length > 0) {
        ok = false;
        messages.push("Tens " + unanswered.length + " pregunta/es sense respondre. Les hem remarcat en vermell.");
    }

    markUnansweredQuestions();
    updateProgress();

    if (!ok) {
        status.textContent = messages.join(" ");
        status.className = "error";
    }

    return ok;
}

function downloadJSON(content, filename) {
    const blob = new Blob([JSON.stringify(content, null, 2)], { type: "application/json" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = filename;
    document.body.appendChild(a);
    a.click();
    a.remove();
    URL.revokeObjectURL(url);
}

function onSaveTemp() {
    const select = document.getElementById("alumne");
    const idAlumne = select.value;
    const nomAlumne = select.options[select.selectedIndex] ? select.options[select.selectedIndex].text : "";

    const status = document.getElementById("status-message");
    status.className = "";
    status.textContent = "";

    if (!idAlumne) {
        status.textContent = "Per guardar un fitxer temporal has de seleccionar abans el teu nom.";
        status.className = "error";
        return;
    }

    const answers = collectAnswers();
    const signature = computeSignature(idAlumne, answers);
    const nowIso = new Date().toISOString();

    const payload = {
        meta: {
            exam: "0483-form-virtualitzacio-cli-docker",
            version: 1,
            type: "draft"
        },
        idAlumne,
        nomAlumne,
        timestamp: nowIso,
        answers,
        signature
    };

    const cleanName = nomAlumne.replace(/[^a-zA-Z0-9_-]+/g, "_") || "alumne";
    const filename = "tmp-0483-form-virtualitzacio-cli-docker-" + cleanName + ".json";
    downloadJSON(payload, filename);

    const info = document.getElementById("temp-file-info");
    info.textContent = "Fitxer temporal generat: " + filename;
    const msg = document.getElementById("status-message");
    msg.textContent = "Fitxer temporal descarregat correctament.";
    msg.className = "success";
}

function onLoadTemp(evt) {
    const fileInput = evt.target;
    const file = fileInput.files[0];
    const info = document.getElementById("temp-file-info");
    const status = document.getElementById("status-message");
    status.className = "";
    status.textContent = "";

    if (!file) {
        info.textContent = "";
        return;
    }

    const reader = new FileReader();
    reader.onload = function (e) {
        try {
            const text = e.target.result;
            const data = JSON.parse(text);

            if (!data || !data.idAlumne || !data.answers || !data.signature) {
                throw new Error("Fitxer temporal amb format inesperat.");
            }

            const expected = computeSignature(data.idAlumne, data.answers);
            if (expected !== data.signature) {
                throw new Error("La signatura no coincideix. El fitxer pot haver estat modificat.");
            }

            applyAnswers(data);
            updateProgress();
            markUnansweredQuestions();

            // Recordem de quin alumne prové aquest fitxer temporal
            LOADED_FILE_OWNER_ID = data.idAlumne;

            info.textContent = "Fitxer temporal carregat: " + file.name;
            status.textContent = "Respostes carregades correctament des del fitxer temporal.";
            status.className = "success";
        } catch (err) {
            console.error("Error llegint fitxer temporal:", err);
            info.textContent = "";
            status.textContent = "Error en carregar el fitxer temporal: " + err.message;
            status.className = "error";
        } finally {
            // Per permetre tornar a seleccionar el mateix fitxer si cal
            fileInput.value = "";
        }
    };
    reader.readAsText(file);
}

function onDownloadFinal() {
    if (!validateBeforeFinal()) {
        return;
    }

    const select = document.getElementById("alumne");
    const idAlumne = select.value;
    const nomAlumne = select.options[select.selectedIndex] ? select.options[select.selectedIndex].text : "";

    const status = document.getElementById("status-message");
    status.className = "";
    status.textContent = "";

    // Si s'ha carregat un fitxer temporal, l'alumne seleccionat ha de ser el mateix
    if (LOADED_FILE_OWNER_ID && idAlumne !== LOADED_FILE_OWNER_ID) {
        status.textContent = "Has carregat un fitxer temporal que pertany a un altre alumne. No pots enviar aquestes respostes com si fossin d’un alumne diferent.";
        status.className = "error";
        return;
    }

    const answers = collectAnswers();
    const signature = computeSignature(idAlumne, answers);
    const nowIso = new Date().toISOString();

    const payload = {
        meta: {
            exam: "0483-form-virtualitzacio-cli-docker",
            version: 1,
            type: "final"
        },
        idAlumne,
        nomAlumne,
        timestamp: nowIso,
        answers,
        signature
    };

    const cleanName = nomAlumne.replace(/[^a-zA-Z0-9_-]+/g, "_") || "alumne";
    const filename = "0483-form-virtualitzacio-cli-docker-" + cleanName + ".json";

    downloadJSON(payload, filename);

    status.textContent = "JSON final descarregat correctament (" + filename + "). Desa’l i puja’l al Moodle.";
    status.className = "success";
}

document.addEventListener("DOMContentLoaded", () => {
    // En carregar la pàgina, assumim que no hi ha cap fitxer temporal carregat
    LOADED_FILE_OWNER_ID = null;

    loadAlumnes();
    updateProgress();

    const form = document.getElementById("exam-form");
    form.addEventListener("change", updateProgress);
    form.addEventListener("input", updateProgress);

    document.getElementById("btn-save-temp").addEventListener("click", onSaveTemp);
    document.getElementById("btn-download-final").addEventListener("click", onDownloadFinal);
    document.getElementById("load-temp-input").addEventListener("change", onLoadTemp);
});
