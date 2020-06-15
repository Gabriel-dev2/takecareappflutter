import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'classes/Login.dart';
import 'mainMenu.dart';

class HomePage extends StatefulWidget {
  //Criação de Estado
  @override
  _HomePageState createState() => _HomePageState();

}
// Criando Página inicial (Tela de Login)
class _HomePageState extends State<HomePage> {
  int submit = 0;
  String cpf = "";
  String password = "";

  TextEditingController _controller = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Construção do context do app
    return new Scaffold(
      // Criando objeto container do corpo
      body: new Container(
        // Criando coluna principal, ela é a coluna reponsável por manter toda a estrutura do corpo
        child: Column(
          // Lista dos widgets
          children: <Widget>[
            // Container do logo
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
                      onChanged: (String CPF) {
                        cpf = CPF;
                      },
                      controller: _controller,
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
                      onChanged: (String senha) {
                        password = senha;
                      },
                      obscureText: true,
                      controller: _controller2,
                    ),
                  )
                ],
              ),
            ),
            FlatButton(
                onPressed: null,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, right: 32
                      ),
                      child: Text("Esqueci minha senha",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0
                          ),
                      ),
                    )
                )
            ),

            Container(
              padding: EdgeInsets.only(top: 32),
              child: Column(
                children: <Widget>[
                FlatButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    if(submit == 0){
                      _controller.clear();
                      _controller2.clear();
                      Future<Login> fetchPaciente() async {
                        String jsonBody = '{"cpf": "$cpf", "senha": "$password"}';
                        final response = await http.post("https://takecare-api.herokuapp.com/api/auth/paciente/login", body: jsonBody,
                        headers: {"Accept": "application/json", "Content-Type": "application/json"});
                        var retorno = Login.fromJson(json.decode(response.body));
                        String _cpf = retorno.getCpfObject();
                        if(response.statusCode == 200) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainMenu(_cpf)),
                          );
                          return Login.fromJson(json.decode(response.body));
                        } else if(response.statusCode == 404){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: new Text("Aviso"),
                                content: new Text("Usuário ou senha incorreto"),
                                actions: <Widget>[
                                  new FlatButton(
                                      child: new Text("Fechar"),
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                      },
                                  )
                                ],
                              );
                            }
                          );
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: new Text("Aviso"),
                                  content: new Text("Problema ao autenticar tente novamente mais tarde ou contate o suporte"),
                                  actions: <Widget>[
                                    new FlatButton(
                                      child: new Text("Fechar"),
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                );
                              }
                          );
                        }
                      }
                      fetchPaciente();
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 15.0),
                  ),
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