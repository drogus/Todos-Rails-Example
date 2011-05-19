sc_require("views/text_field");

Todos.SignInFieldView = Todos.TextField.extend({
  insertNewline: function() {
    Todos.userSessionController.signIn();
  }
});
