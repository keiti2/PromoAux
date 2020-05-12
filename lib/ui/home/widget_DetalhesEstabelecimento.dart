import 'package:flutter/material.dart';
import './values/values.dart';
import '../model/model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetalhesEstabelecimento extends StatelessWidget {
  final Estabelecimento estabelecimento;
  DetalhesEstabelecimento(this.estabelecimento);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Estabelecimento'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black87,
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: Image.asset(
                  estabelecimento.imagem,
                  width: 2000,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          estabelecimento.nome,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            height: 1.5,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          estabelecimento.cidade,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            height: 1.2,
                          ),
                        ),
                        Text(
                          "2,5 km",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Restaurante",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 2,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: _launchPHONE,
                      color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.phone),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                          Text(
                            'Ligar',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                      onPressed: _launchURL,
                      color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                          Text(
                            'Save',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                      onPressed: _launchURL,
                      color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.public),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                          Text(
                            'Site',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  width: 2000,
                  decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 1, color: Colors.grey)),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      estabelecimento.descricao,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )),
              GestureDetector(
                onTap: _launchMAP,
                child: Container(
                    width: 2000,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border:
                          Border(top: BorderSide(width: 1, color: Colors.grey)),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Flexible(
                          child: Text(
                            estabelecimento.endereco,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não é possivel abrir a url:  $url';
    }
  }

  _launchPHONE() async {
    const telephoneUrl = "tel:5514998452847";
    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw 'Não é possivel discar o fone:  $telephoneUrl';
    }
  }

  _launchMAP() async {
    final String lat = "-22.221077";
    final String lng = "-49.939343";

    final String googleMapsUrl = "comgooglemaps://?center=$lat,$lng";
    final String appleMapsUrl = "https://maps.apple.com/?q=$lat,$lng";

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    }
    if (await canLaunch(appleMapsUrl)) {
      await launch(appleMapsUrl, forceSafariVC: false);
    } else {
      throw "Couldn't launch URL MAP";
    }
  }
}
