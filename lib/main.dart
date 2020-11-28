import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news36/Home.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      title: 'news',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurpleAccent,
        accentColor: Colors.red
      ),
      home: Home(),
      routes: {
        '/home': (BuildContext) => Home(),
      },
    );
  }
}
