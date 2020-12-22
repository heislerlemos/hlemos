

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