import 'package:flutter/material.dart';
import '../localizacao/localizacao_page.dart';
import '../cadastro/cadastro1.dart';


Future<void> showMyDialog(con) async {
  return showDialog<void>(
    context: con,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alerta'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                  'Você precisa efetuar o login para acessar essa área. Caso não possua uma conta faça seu cadastro, é rápido e de graça.'),
              //Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Entrar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Cadastrar'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cadastro1()),
              );
            },
          ),
          FlatButton(
            child: Text('Voltar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
