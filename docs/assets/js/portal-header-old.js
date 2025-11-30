(function () {
  function renderPortalHeader(el) {
    const moduleTitle = el.dataset.module || document.title;
    const backHref    = el.dataset.backHref || '#';
    const backText    = el.dataset.backText || '← Enrere';
    const subtitle    = el.dataset.subtitle || '';

    // ❗ Ruta del logo llegida de data-logo-src
    const logoSrc = el.dataset.logoSrc || '../../../assets/img/Logo_DIGIQTECH_343x99.png';
    const logoAlt = el.dataset.logoAlt || 'DigiTech';

    el.innerHTML = `
      <div class="portal-header__inner">
        <a class="portal-header__back" href="${backHref}">${backText}</a>

        <div class="portal-header__titles">
          <h1 class="portal-header__module">${moduleTitle}</h1>
          ${subtitle ? `<p class="portal-header__subtitle">${subtitle}</p>` : ''}
        </div>

        <div class="portal-header__brand">
          <img src="${logoSrc}" alt="${logoAlt}" class="logo">
        </div>
      </div>
    `;
  }

  function initPortalHeaders() {
    document
      .querySelectorAll('.portal-header[data-module]')
      .forEach(renderPortalHeader);
  }

  document.addEventListener('DOMContentLoaded', initPortalHeaders);
  window.initPortalHeaders = initPortalHeaders;
})();
