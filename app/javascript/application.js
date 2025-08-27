// app/javascript/application.js

// Turbo (replaces rails-ujs / turbolinks)
import "@hotwired/turbo-rails"

// jQuery
import $ from "jquery"
window.$ = $
window.jQuery = $

// Bootstrap JS (requires Popper)
import * as Popper from "@popperjs/core"
import "bootstrap"

// Cocoon for nested forms (from gem)
import "cocoon"

// Gritter notifications (from gem)
import "gritter"

// jQuery UI (from gem)
import "jquery-ui/ui/widgets/datepicker" // example widget

// ActiveStorage support
import "@rails/activestorage"
import "./channels" // ActionCable

// Optional: sortable library (if you used html.sortable)
import Sortable from "sortablejs"
window.Sortable = Sortable
