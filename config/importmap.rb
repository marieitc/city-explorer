# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.1/dist/js/bootstrap.esm.js"
# pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
pin "mapbox-gl", to: "https://ga.jspm.io/npm:mapbox-gl@2.15.0/dist/mapbox-gl.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"
pin "swiper", to: "https://ga.jspm.io/npm:swiper@10.2.0/swiper.mjs"
pin "swiper/bundle", to: "https://ga.jspm.io/npm:swiper@10.2.0/swiper-bundle.mjs"
pin "sweetalert2", to: "https://ga.jspm.io/npm:sweetalert2@11.7.27/dist/sweetalert2.all.js"
pin "toastify-js", to: "https://ga.jspm.io/npm:toastify-js@1.12.0/src/toastify.js"
