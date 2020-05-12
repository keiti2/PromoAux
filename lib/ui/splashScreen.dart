import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './home/home_page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
            color: Colors.black,
            child: Center(
              child: Container(
                width: 150,
                height: 150,
                child: Image.asset("assets/img/iconeApp.png"),
              ),
            )
        );
  }
}