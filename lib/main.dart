import 'package:PromoPlus/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/* void main()   {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Promo ++",
    home: new HomePage(),
  ));
} */

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Promo ++",
      home: new HomePage(),
    ));
  });
}
