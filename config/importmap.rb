# config/importmap.rb

pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "jquery", to: "https://code.jquery.com/jquery-3.7.1.min.js"
pin "@popperjs/core", to: "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
pin "sortablejs", to: "https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/modular/sortable.min.js"

# Cocoon, gritter, and jquery-ui come from gems, so you don't need to pin them here
