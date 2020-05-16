import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Termos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Termos e condições gerais de uso"),
          backgroundColor: Colors.grey,
        ),
        body: meuLayoutWidget(),
      ),
    );
  }
}

Widget meuLayoutWidget() {
  return Padding(
    // Define o padding usando o widget EdgeInsets.
    // O valor 16.0 significa 16 pixels logicos. Esta é
    // uma resolução independente.
    padding: EdgeInsets.all(16.0),
    // Quando envolver um widget com outro widget,
    // você usa a propriedade child do widget pai
    child: Text(
        " I. DA ACEITAÇÃO DOS TERMOS E CONDIÇÕES GERAIS DE USO\n\n"
        " Todos aqueles que desejarem ter acesso aos serviços ofertados",
        style: TextStyle(color: Colors.white, fontSize: 17.0)),
  );
}
