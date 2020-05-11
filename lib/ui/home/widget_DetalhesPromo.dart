import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/model.dart';
import './values/values.dart';
import './alert_dialogs/login_cadastro.dart';
/* 
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
 */

class DetalhesPromo extends StatelessWidget {
  final Promocao promocao;
  DetalhesPromo(this.promocao);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text('Detalhes Promoção'),
        ),
        body: Container(
          color: Colors.black87,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          promocao.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 9,
                        child: Image.asset(
                          "assets/images/ic-favorite-24px.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        promocao.nome,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          height: 1.2,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/estrelas.png",
                          fit: BoxFit.none,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    promocao.descricao,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'R\$: ' + promocao.precoVenda.toString(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          height: 1.2,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        '   '
                                'R\$: ' +
                            promocao.precoPromocao.toString(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          promocao.estabelecimento.imagem,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(promocao.estabelecimento.nome,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      height: 1.2,
                                    )),
                                Text('2,5 Km',
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      height: 1.2,
                                    ))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                    child: Text(
                                  promocao.estabelecimento.descricao,
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.33333,
                                  ),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 2000,
                  padding: EdgeInsets.all(15),
                  child: RaisedButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 2000,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: const Text('Pegue seu Cupom',
                          style: TextStyle(fontSize: 20)),
                        
                    ),
                  ),
                )
                
              ],
            ),
          ),
        ));
  }
}


