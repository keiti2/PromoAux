import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './widget_DetalhesPromo.dart';
import '../model/model.dart';

class WidgetListPromocao extends StatelessWidget {
  final Promocao promocao;
  WidgetListPromocao(this.promocao);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(3.0),
      child: new Stack(
        children: <Widget>[
          new Container(
            height: 95.0,
            decoration: new BoxDecoration(color: Colors.black),
            child: new ListTile(
              leading: Image.asset(
                promocao.image,
                height: 140,
                width: 90,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),
              title: Text(promocao.nome,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center),
              subtitle: new ListTile(
                  title: Text(promocao.descricao,
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                  subtitle: Row(
                    children: <Widget>[
                      Text("De R\$:" + promocao.precoVenda.toString(),
                          style: TextStyle(color: Colors.redAccent, fontSize: 15,decoration: TextDecoration.lineThrough)),
                      Text(" Por R\$:" + promocao.precoPromocao.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  )

                  /* Text("De " + promocao.precoVenda.toString() + " Por  " + promocao.precoPromocao.toString(),style: TextStyle(color: Colors.white,fontSize: 15)), */
                  ),

              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.white, size: 30.0),

              //teste merda
              onTap: () {
                print("hummmmm ????????");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetalhesPromo(promocao)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/////
