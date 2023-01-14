import 'package:flutter/material.dart';
import 'package:news_appbaity/pages/homePage.dart';
import 'package:news_appbaity/pages/olahragaPage.dart';
import 'package:news_appbaity/pages/otomotifPage.dart';
import 'package:news_appbaity/pages/profilPage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/OlahragaPage': (context) => SportPage(),
        '/OtomotifPage': (context) => AutomotivePage(),
        '/ProfilPage': (context) => ProfilPages(),
      },
    );
  }
}
