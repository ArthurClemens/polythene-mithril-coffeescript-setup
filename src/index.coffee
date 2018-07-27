import m from "mithril";
import { Dialog, Button } from "polythene-mithril";

import "polythene-css/dist/polythene.css";            # Component CSS
import "polythene-css/dist/polythene-typography.css"; # Default Material Design styles including Roboto font

App = {
  view: () -> m "div", [
    m Button, {
      raised: true
      label: "Show dialog"
      events: {
        onclick: () -> Dialog.show {
          title: "Hello",
          body: "Click outside to close, or press ESCAPE."
          backdrop: true
        }
      }
    }
    m Dialog
  ]
}

m.mount(document.body, App);
