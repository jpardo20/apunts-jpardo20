(function () {
    debugger
  // Relació entre el "slug" de la carpeta i el títol bonic del mòdul
  const MODULE_TITLES = {
    "0221-muntatge-i-manteniment-d-equips": "Apunts 0221 Muntatge i manteniment d'equips",
    "0223-aplicacions-ofimatiques": "Apunts 0223 Aplicacions ofimàtiques",
    "0225-xarxes-locals": "Apunts 0225 Xarxes locals",
    "0373-llenguatges-de-marques": "Apunts 0373 Llenguatges de marques",
    "0483-sistemes-informatics": "Apunts 0483 Sistemes informàtics",
    "0484-bases-de-dades": "Apunts 0484 Bases de dades",
    "mopt1-robotica-python": "Apunts mopt1 Robòtica amb Python"
  };

  function detectContext() {
    const rel = window.location.pathname.replace(/^\/+/, "");
    const parts = rel.split("/");

    const idx = parts.indexOf("moduls");
    let moduleSlug = null;
    let pageType = "other";

    if (idx !== -1 && idx + 1 < parts.length) {
      moduleSlug = parts[idx + 1];
      const section = parts[idx + 2] || "";
      const last = parts[parts.length - 1];

      if (section === "presentacions" && last.indexOf("index") === 0) {
        pageType = "module-index";
      } else if (section === "presentacions" && last.indexOf("presentador") === 0) {
        pageType = "presentador";
      }
    }

    return { moduleSlug, pageType };
  }

  function renderPortalHeader(el) {
    const ctx = detectContext();

    // 1) Títol del mòdul
    let moduleTitle = el.dataset.module;
    if (!moduleTitle || moduleTitle === "auto") {
      if (ctx.moduleSlug && MODULE_TITLES[ctx.moduleSlug]) {
        moduleTitle = MODULE_TITLES[ctx.moduleSlug];
      } else if (ctx.moduleSlug) {
        moduleTitle = ctx.moduleSlug;
      } else {
        moduleTitle = "Apunts d'en Joan Pardo per DigiTechFP";
      }
    }

    // 2) Subtítol: al presentador agafem ?title=... si no ens han passat res
    let subtitle = el.dataset.subtitle;
    if ((!subtitle || subtitle === "auto") && ctx.pageType === "presentador") {
      const p = new URLSearchParams(window.location.search);
      subtitle = p.get("title") || "";
    }

    // 3) Enllaç de "Tornar..."
    let backHref = el.dataset.backHref;
    let backText = el.dataset.backText;

    if (!backHref || backHref === "auto" || !backText || backText === "auto") {
      if (ctx.pageType === "presentador") {
        backHref = "./index.html";
        backText = "← Tornar a Presentacions";
      } else if (ctx.pageType === "module-index") {
        backHref = "../../index.html";
        backText = "← Tornar a l'inici";
      } else {
        backHref = "../../index.html";
        backText = "← Tornar a l'inici";
      }
    }

    // 4) Logo: per defecte, la ruta típica dels moduls
    const logoSrc = el.dataset.logoSrc || "../../../assets/img/Logo_DIGIQTECH_343x99.png";
    const logoAlt = el.dataset.logoAlt || "DigiTech";

    el.innerHTML = `
      <div class="portal-header__inner">
        <a class="portal-header__back" href="${backHref}">${backText}</a>
        <div class="portal-header__titles">
          <h1 class="portal-header__module">${moduleTitle}</h1>
          ${subtitle ? `<p class="portal-header__subtitle">${subtitle}</p>` : ""}
        </div>
        <div class="portal-header__brand">
          <img src="${logoSrc}" alt="${logoAlt}" class="logo">
        </div>
      </div>
    `;
  }

  function initPortalHeaders() {
    document.querySelectorAll(".portal-header").forEach(renderPortalHeader);
  }

  document.addEventListener("DOMContentLoaded", initPortalHeaders);
  window.initPortalHeaders = initPortalHeaders;
})();
