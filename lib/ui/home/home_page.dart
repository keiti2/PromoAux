import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../localizacao/localizacao_page.dart';
import '../favoritos/favoritos_page.dart';
import '../lista/lista_page.dart';
import '../perfil/perfil_page.dart';
import './home_Body.dart';

class HomePage extends StatelessWidget {
  static const String _title = 'Promo +++';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;


  List<Widget> _widgetOptions = [
    HomePageBody(),
    LocalizacaoPageBody(),
    FavoritosPageBody(),
    ListaPageBody(),
    PerfilPageBody(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Promo ++')),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed),
            title: Text('Local'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Minha Lista'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorito'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('Perfil'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
