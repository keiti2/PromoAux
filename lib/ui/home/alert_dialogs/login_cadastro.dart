import 'package:flutter/material.dart';


showAlertDialog(BuildContext context) {
  // configura os botões
  Widget entrarButton = FlatButton(
    child: Text("Entrar"),
    onPressed:  () {},
  );
  Widget cadastrarButton = FlatButton(
    child: Text("Cadastrar"),
    onPressed:  () {},
  );
  Widget voltarButton = FlatButton(
    child: Text("Voltar"),
    onPressed:  () {},
  );
  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Aviso"),
    content: Text("Você precisa efetuar o login para acessar essa área. Caso não possua uma conta faça seu cadastro, é rápido e de graça."),
    actions: [
      entrarButton,
      cadastrarButton,
      voltarButton,
    ],
  );
  // exibe o dialogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}