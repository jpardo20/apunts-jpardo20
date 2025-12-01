(function () {
  function initPresentationsPage(options) {
    const {
      jsonUrl = 'presentacions.json',
      gridSelector = '#grid',
      searchSelector = '#search',
      sortSelector = '#sort'
    } = options || {};

    const grid = document.querySelector(gridSelector);
    if (!grid) return;

    const searchInput = document.querySelector(searchSelector);
    const sortSelect = document.querySelector(sortSelector);
    let items = [];

    function cardTemplate(item) {
      const status = (item.status || 'active').toLowerCase();
      const kind = (item.kind || 'theory').toLowerCase();
      const isActivity = kind === 'activity';
      const desc = item.description ? `<p>${item.description}</p>` : '';
      const title = item.title || 'Presentació';

      const href = item.href || (
        `./presentador.html?src=${encodeURIComponent(item.src || '')}` +
        (item.theme ? `&theme=${encodeURIComponent(item.theme)}` : '') +
        (item.title ? `&title=${encodeURIComponent(item.title)}` : '')
      );

      const articleClass = [
        'card',
        status === 'inactive' ? 'card--inactive' : '',
        isActivity ? 'card--activity' : 'card--theory'
      ].filter(Boolean).join(' ');

      const badgeStatus = status === 'inactive'
        ? `<span class="badge badge--soon">Properament</span>`
        : '';

      const badgeKind = isActivity
        ? `<span class="badge badge--activity">Activitat</span>`
        : `<span class="badge badge--theory">Teoria</span>`;

      let button;
      if (status === 'inactive') {
        button = `<span class="button disabled" role="link" aria-disabled="true" title="Properament">No disponible</span>`;
      } else {
        const buttonClass = isActivity ? 'button activitat' : 'button primary';
        const buttonText = isActivity ? 'Obrir activitat' : 'Obrir presentació';
        const target = item.href ? ' target="_blank" rel="noopener noreferrer"' : '';
        button = `<a class="${buttonClass}" href="${href}"${target}>${buttonText}</a>`;
      }

      return `<article class="${articleClass}">
        ${badgeStatus} ${badgeKind}
        <h2>${title}</h2>
        ${desc}
        <p class="card__actions">${button}</p>
      </article>`;

    }

    function render(list) {
      if (!list || !list.length) {
        grid.innerHTML = '<p>No s’ha trobat cap presentació que coincideixi amb la cerca.</p>';
        return;
      }
      grid.innerHTML = list.map(cardTemplate).join('\n');
    }

    function applyFilters() {
      const q = (searchInput?.value || '').trim().toLowerCase();
      const mode = sortSelect?.value || 'title-az';

      let list = (items || []).filter(it => {
        const status = (it.status || 'active').toLowerCase();
        if (status === 'hidden') return false;
        const t = (it.title || '').toLowerCase();
        const d = (it.description || '').toLowerCase();
        return !q || t.includes(q) || d.includes(q);
      });

      list.sort((a, b) => {
        if (mode === 'title-az') return (a.title || '').localeCompare(b.title || '');
        if (mode === 'title-za') return (b.title || '').localeCompare(a.title || '');
        if (mode === 'date-new' || mode === 'date-old') {
          const ad = new Date(a.date || 0).getTime() || 0;
          const bd = new Date(b.date || 0).getTime() || 0;
          return mode === 'date-new' ? bd - ad : ad - bd;
        }
        if (mode === 'order') {
          const ao = typeof a.order === 'number' ? a.order : Number.MAX_SAFE_INTEGER;
          const bo = typeof b.order === 'number' ? b.order : Number.MAX_SAFE_INTEGER;
          return ao - bo;
        }
        return 0;
      });

      render(list);
    }

    searchInput?.addEventListener('input', applyFilters);
    sortSelect?.addEventListener('change', applyFilters);

    fetch(jsonUrl)
      .then(r => r.json())
      .then(data => {
        items = data.presentations || [];
        applyFilters();
      })
      .catch(err => {
        console.error(err);
        grid.innerHTML = '<p>No s’ha pogut carregar el llistat de presentacions.</p>';
      });
  }

  // exposem la funció al global
  window.initPresentationsPage = initPresentationsPage;
})();
