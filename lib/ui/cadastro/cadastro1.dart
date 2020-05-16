import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../cadastro/cadastro2.dart';

enum Genero { MASCULINO, FEMININO }

class Cadastro1 extends StatefulWidget {
  @override
  _Cadastro1 createState() => _Cadastro1();
}

class _Cadastro1 extends State<Cadastro1> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome, email, genero, nascimento;
  Genero _genero = Genero.MASCULINO;

  var textEditingController = TextEditingController();
  var maskTextInputFormatter = MaskTextInputFormatter(
      mask: "##/##/####", filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: new AppBar(
          title: new Text('Cadastro'),
          backgroundColor: Colors.grey,
        ),
        body: new SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 35, 10, 0),
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidate: _validate,
              child: _formUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 20.0),
          decoration: new InputDecoration(
            labelText: 'Nome',
            labelStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          validator: _validarNome,
          onSaved: (String val) {
            nome = val;
          },
        ),
        new TextFormField(
            style: TextStyle(color: Colors.white, fontSize: 20.0),
            decoration: new InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.grey),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: _validarEmail,
            onSaved: (String val) {
              email = val;
            }),
        new Container(
          height: 30.0,
        ),
        Row(children: <Widget>[
          Text('Gênero', style: TextStyle(color: Colors.grey, fontSize: 20.0)),
        ]),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton.icon(
              label: const Text('Masculino',
                  style: TextStyle(color: Colors.white, fontSize: 16.0)),
              icon: Radio(
                activeColor: Colors.orange,
                value: Genero.MASCULINO,
                groupValue: _genero,
                onChanged: (Genero value) {
                  setState(() {
                    _genero = value;
                  });
                },
              ),
              onPressed: () {
                setState(() {
                  _genero = Genero.MASCULINO;
                });
              },
            ),
            FlatButton.icon(
              label: const Text('Feminino',
                  style: TextStyle(color: Colors.white, fontSize: 16.0)),
              icon: Radio(
                activeColor: Colors.orange,
                
                value: Genero.FEMININO,
                groupValue: _genero,
                onChanged: (Genero value) {
                  setState(() {
                    _genero = value;
                  });
                },
              ),
              onPressed: () {
                setState(() {
                  _genero = Genero.FEMININO;
                });
              },
            ),
          ],
        ),
        new SizedBox(height: 15.0),
        new Row(children: <Widget>[
          Text('Data Nascimento',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 20.0)),
        ]),
        new TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 20.0),
          textAlign: TextAlign.center,
          controller: textEditingController,
          inputFormatters: [maskTextInputFormatter],
          autocorrect: false,
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
              hintText: "DD / MM / AAAA",
              hintStyle: TextStyle(color: Colors.grey),
              fillColor: Colors.white,
              //filled: true,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              )),
          validator: _validarNascimento,
          onSaved: (String val) {
            nascimento = val;
          },
        ),
        new SizedBox(height: 65.0),
        new Container(
          padding: const EdgeInsets.all(0.0),
          width: 320.0,
          height: 60.0,
          child: FlatButton(
            onPressed: (){
              _sendForm();
              Navigator.push(
                  context,
                  MaterialPageRoute( builder: (context) => Cadastro2()),
                );
            },
            textColor: Colors.white,
            color: Colors.green,
            highlightColor: Colors.orangeAccent,
            padding: EdgeInsets.all(10.0),
            child: Text('Próxima', style: TextStyle(fontSize: 30.0)),
          ),
        ),
      ],
    );
  }

  String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if (!regExp.hasMatch(value)) {
      return "Email inválido";
    } else {
      return null;
    }
  }

  String _validarNascimento(String value) {
    String patttern = r'^([0-9]*)/([0-9]*)/([0-9]*)$';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe a data de nascimento";
    } else if (value.length != 10) {
      return "A data deve ser no formato mm/dd/aaaa";
    } else if (!regExp.hasMatch(value)) {
      return "A data so deve conter dígitos";
    }
    return null;
  }

  _sendForm() {
    if (_key.currentState.validate()) {
      // Sem erros na validação
      _key.currentState.save();
      print("Nome $nome");
      print("Email $email");
      print("Nascimento $nascimento");
      print("Genero $_genero");
    } else {
      // erro de validação
      setState(() {
        _validate = true;
      });
    }
  }
}
