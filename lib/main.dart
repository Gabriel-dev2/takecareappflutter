import 'package:flutter/material.dart';
import 'package:takecare/homePage.dart';
import 'package:takecare/mainMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeCuida',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => MainMenu("")
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
