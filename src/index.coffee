import m from "mithril";
import { Dialog, RaisedButton } from "polythene-mithril";

App = {
  view: () -> m "div", [
    m RaisedButton, {
      label: "Show dialog",
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
