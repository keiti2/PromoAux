import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../cadastro/termos.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

String senha, confirmasenha, cep;

class Cadastro2 extends StatefulWidget {
  @override
  _Cadastro2 createState() => _Cadastro2();
}

class _Cadastro2 extends State<Cadastro2> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  bool _obscureText = true;
  bool _checkedValue = false;

  var textEditingController = TextEditingController();
  var maskTextInputFormatter = MaskTextInputFormatter(
      mask: "#####-###", filter: {"#": RegExp(r'[0-9]')});

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
            labelText: 'Senha',
            labelStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          validator: _validarSenha,
          onSaved: (String val) {
            senha = val;
          },
          obscureText: _obscureText,
        ),
        new SizedBox(height: 15.0),
        new TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 20.0),
          decoration: new InputDecoration(
            labelText: 'Confirme a senha',
            labelStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          validator: _validarConfirmaSenha,
          onSaved: (String val) {
            confirmasenha = val;
          },
          obscureText: _obscureText,
        ),
        new SizedBox(height: 25.0),
        new Row(children: <Widget>[
          Text('Cep',
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
              hintStyle: TextStyle(color: Colors.grey),
              hintText: "00000-000",
              fillColor: Colors.white,
              //filled: true,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              )),
          validator: _validarCep,
          onSaved: (String val) {
            cep = val;
          },
        ),
        new SizedBox(height: 25.0),
        new Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 70),
              color: Colors.white,
              height: 20,
              width: 20,
              child: Checkbox(
                activeColor: Colors.orange,
                value: _checkedValue,
                onChanged: (novoValor) {
                  _aceitou(novoValor);
                },
              ),
            ),
            Expanded(
                child: Container(
              height: 100,
              width: 40,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute( builder: (context) => Termos()),
                );
                },
                child: new Text(
                    "Li e concordo com os Termos de Uso e Política de Privacidade. Os Termos e a Política estarão disponíveis para consulta dentro do aplicativo.",
                    style: TextStyle(color: Colors.white, fontSize: 17.0)),
              ),
            )),
          ],
        ),
        new SizedBox(height: 30.0),
        new Container(
          padding: const EdgeInsets.all(0.0),
          width: 320.0,
          height: 60.0,
          child: FlatButton(
            onPressed: () {
              _sendForm();
              /*   ROTEAR a próxima tela depois
              Navigator.push(
                  context,
                  MaterialPageRoute( builder: (context) => Teste2()),
                );
                */
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

  String _validarSenha(String value) {
    senha = value;
    String patttern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe uma senha";
    } else if (value.length < 8) {
      return "A senha deve ter no mínimo 8 caracteres";
    } else if (!regExp.hasMatch(value)) {
      return "A senha deve conter letras, numeros e caractere especial";
    }
    return null;
  }

  String _validarConfirmaSenha(String value) {
    print('entrou $value');
    print('senha $senha');
    if (value == '') {
      return "Repita a senha";
    } else if (value != senha) {
      return "Senha não confere";
    }
    return null;
  }

  String _validarCep(String value) {
    String patttern = r'^([0-9]*)-([0-9]*)$';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o cep";
    } else if (value.length != 9) {
      return "O cep deve conter 8 dígitos";
    } else if (!regExp.hasMatch(value)) {
      return "A data so deve conter dígitos";
    }
    return null;
  }

  void _aceitou(bool isChecked) {
    // Usando a chamada State.setState() estado atualizando
    // o valor do state da variável _textoString.
    setState(() {
      _checkedValue = isChecked;
    });
  }

/*
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
*/

  _sendForm() {
    if (_key.currentState.validate()) {
      // Sem erros na validação
      _key.currentState.save();
      print("Nome $senha");
      print("Email $confirmasenha");
      print("Nascimento $cep");
    } else {
      // erro de validação
      setState(() {
        _validate = true;
        return false;
      });
    }
  }
}
