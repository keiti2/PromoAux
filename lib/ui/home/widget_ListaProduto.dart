import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './widget_DetalhesPromo.dart';
import '../model/model.dart';

class WidgetListPromocao extends StatelessWidget{
  final Promocao promocao;
  WidgetListPromocao(this.promocao);

 @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Stack(
        children: <Widget>[
          new Container(
          height: 100.0,
          decoration: new BoxDecoration(color: Colors.black),
          child: new ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(promocao.image),
            ),
            title:
                Text(promocao.nome, style: TextStyle(color: Colors.white)),
            subtitle: Text(
                promocao.descricao,
                style: TextStyle(color: Colors.white)),
            onTap: () {
              print("hummmmm ????????");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesPromo(promocao)),
              );
            },
          ),
        ),
        ],
    ),
    );
  }
  }