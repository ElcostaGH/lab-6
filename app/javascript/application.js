// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

document.addEventListener("turbo:load", function () {
    const errorExplanation = document.getElementById("error_explanation");
    if (errorExplanation) {
      window.scrollTo({
        top: errorExplanation.offsetTop,
        behavior: "smooth"
      });
    }
  });
  