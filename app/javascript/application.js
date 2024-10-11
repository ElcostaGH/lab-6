// app/javascript/packs/application.js

import Rails from "@rails/ujs"; // Asegúrate de que esta línea esté primero
Rails.start();

import "@hotwired/turbo-rails";
import "./controllers";
import * as bootstrap from "bootstrap";
import * as ActiveStorage from "@rails/activestorage"; // Asegúrate de que esta línea sea correcta
ActiveStorage.start();

document.addEventListener("turbo:load", function () {
    const errorExplanation = document.getElementById("error_explanation");
    if (errorExplanation) {
        window.scrollTo({
            top: errorExplanation.offsetTop,
            behavior: "smooth"
        });
    }
});
