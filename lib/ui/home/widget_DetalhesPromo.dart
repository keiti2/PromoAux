import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/model.dart';

class DetalhesPromo extends StatelessWidget {
  final Promocao promocao;
  DetalhesPromo(this.promocao);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: const Text('Detalhes Promo')),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              promocao.image,
              fit: BoxFit.cover,
              height: 200.0,
            ),
            Text(
              "Promocao selecionada: " + promocao.nome,
              style: TextStyle(color: Colors.red),
            ),
            Text(
              "Estabelecimento: " + promocao.estabelecimento.nome,
              style: TextStyle(color: Colors.red),
            ),
             Image.asset(
              promocao.estabelecimento.imagem,
              fit: BoxFit.cover,
              height: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
