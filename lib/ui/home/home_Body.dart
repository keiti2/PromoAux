import 'package:flutter/material.dart';
import './widget_ListaProduto.dart';
import '../model/model.dart';


class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: const Text('Home - Promocoes')),
     body:Container(
      child: new Container(
        color: Colors.black,
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 10.00),
              sliver: new SliverList(
                delegate: new SliverChildBuilderDelegate(
                    (context, index) => new WidgetListPromocao(lstPromocoes[index]),
                  childCount: lstPromocoes.length,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}