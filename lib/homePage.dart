import 'package:flutter/material.dart';
import 'package:takecare/animations/fadeAnimation.dart';

class HomePage extends StatefulWidget {
  //Criação de Estado
  @override
  _HomePageState createState() => _HomePageState();

}
// Criando Página inicial (Tela de Login)
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF729dd2),
                    Color(0xFF729dd2)
                  ]
                ),
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(90)
               )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                      child: Image(
                        image: new AssetImage("assets/takecare-logo.png"),
                        width: 200,
                      )
                    )
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height/6.5,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 4, left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "CPF",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 16),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 50,
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Senha",
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16, right: 32
                ),
                child: Text("Esqueci minha senha",
                style: TextStyle(
                  color: Colors.grey
                  )
                ),
              )
            ),

            Container(
              padding: EdgeInsets.only(top: 32),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 50,
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                              Color(0xFF729dd2),
                              Color(0xFF729dd2)
                          ]
                      ),
                          borderRadius: BorderRadius.all(
                          Radius.circular(50)
                          )
                    ),
                    child: Center(
                        child: Text("Login".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}