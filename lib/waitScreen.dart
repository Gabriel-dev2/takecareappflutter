import 'package:flutter/material.dart';

import 'mainMenu.dart';

class WaitScreen extends StatefulWidget {
  @override
  _WaitScreen createState() => _WaitScreen();
}

class _WaitScreen extends State<WaitScreen> {

  int submit = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
                Align(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        top: 300,
                      ),
                    child: Center(child: Text("Solicitação enviada com sucesso!\nPor favor aguarde no local")),
                  ),
                ),
              Align(
                child: Padding(
                    padding: const EdgeInsets.only(
                      top: 150,
                    ),
                  child: Center(
                      child: FlatButton(
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        child: Text("Voltar para o menu"),
                        onPressed: () {
                          if(submit == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainMenu()),
                            );
                          }
                        },
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }

}