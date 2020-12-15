import 'package:flutter/material.dart';

import 'mainMenu.dart';

class WaitScreen extends StatefulWidget {

  final String cpf;
  final String message;
  
  WaitScreen(this.cpf, this.message);

  @override
  _WaitScreen createState() => _WaitScreen(this.cpf, this.message);
}

class _WaitScreen extends State<WaitScreen> {

  int submit = 0;
  String cpf;
  String message;

  _WaitScreen(this.cpf, this.message);

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
                    child: Center(child: Text(message,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic
                      )
                        )
                      ),
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
                              MaterialPageRoute(builder: (context) => MainMenu(this.cpf)),
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