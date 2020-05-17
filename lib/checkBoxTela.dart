import 'package:flutter/material.dart';

class CheckBoxTela extends StatefulWidget {

  @override
  _CheckBoxTela createState() => _CheckBoxTela();

}

class _CheckBoxTela extends State<CheckBoxTela> {
  get checkChanged => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('O que você está sentindo?'),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "Acidente de carro ",
                          style: new TextStyle(fontSize:25.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Merriweather"),
                        ),

                        new Checkbox(key:null, onChanged: checkChanged, value:false)
                      ]

                  )
                ]

            ),

            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Acidente de Moto ",
                    style: new TextStyle(fontSize:25.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Merriweather"),
                  ),

                  new Checkbox(key:null, onChanged: checkChanged, value:true)
                ]

            ),

            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Afogamento ",
                    style: new TextStyle(fontSize:25.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Merriweather"),
                  ),

                  new Checkbox(key:null, onChanged: checkChanged, value:true)
                ]

            ),

            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Queimadura ",
                    style: new TextStyle(fontSize:25.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Merriweather"),
                  ),

                  new Checkbox(key:null, onChanged: checkChanged, value:true)
                ]

            ),

            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Choque elétrico ",
                    style: new TextStyle(fontSize:25.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Merriweather"),
                  ),

                  new Checkbox(key:null, onChanged: checkChanged, value:true)
                ]

            )
          ]

      ),

    );
  }

}