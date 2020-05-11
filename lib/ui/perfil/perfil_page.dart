import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PerfilPageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text(
              "Perfil ",
              style: TextStyle(color: Colors.red),
            ),
            
             
          ],
        ),
      ),
    );
  }
}