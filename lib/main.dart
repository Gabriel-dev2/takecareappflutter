import 'package:flutter/material.dart';
import 'package:takecare/homePage.dart';
import 'package:takecare/mainMenu.dart';
import 'package:takecare/profilePage.dart';

import 'checkBoxTela.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TakeCareApp',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => MainMenu()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: CheckBoxTela(),
    );
  }
}
