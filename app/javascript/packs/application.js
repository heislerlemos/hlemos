

console.log('Using webpacker to render the  javascript ');
import 'core-js/stable'
import 'regenerator-runtime/runtime'

require("trix")
require("@rails/actiontext")
require("@rails/ujs").start()
require("turbolinks").start()

// Stimulus setup.
import { Application } from 'stimulus'
const application = Application.start()

// Register the rails-particles.js controller.
import Particles from 'rails-particles.js'
application.register('particles', Particles)





  document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {

        // Get the target from the "data-target" attribute
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

});
