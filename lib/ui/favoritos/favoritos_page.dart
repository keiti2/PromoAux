import 'package:flutter/material.dart';

class FavoritosPageBody extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return Container(
            constraints: BoxConstraints.expand(height: 300),
            alignment: Alignment.center,
            child: Image.asset(
              "assets/img/emConstrucao.png",
              fit: BoxFit.fill,
            ),
          );
 }
}