/*** Code JS pour le catalogue (les pages de produits) ************************/

// Gestion du formulaire de tri et de filtre
document.querySelectorAll("form.controle select").forEach(
  eltSelect => eltSelect.addEventListener("change",
    evt => evt.target.form.submit()
  )
);