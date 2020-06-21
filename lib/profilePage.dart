import 'package:flutter/material.dart';
import 'package:takecare/changeRegistration.dart';
import 'package:takecare/classes/PacienteObject.dart';
import 'package:takecare/homePage.dart';
import 'package:takecare/mainMenu.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'classes/Paciente.dart';

class ProfilePage extends StatefulWidget {

  final String cpf;
  final String name;
  final String address;
  final int houseNumber;
  final int idPlano;
  final String email;
  final int id;

  ProfilePage(this.cpf, this.name, this.address, this.houseNumber, this.idPlano, this.email, this.id);

  @override
  _ProfilePageState createState() => _ProfilePageState(this.cpf, this.name, this.address, this.houseNumber, this.idPlano, this.email, this.id);

}


class _ProfilePageState extends State<ProfilePage> {

  String name;
  String address;
  String cpf;
  int houseNumber;
  int idPlano;
  String email;
  int id;
  _ProfilePageState(this.cpf, this.name, this.address, this.houseNumber, this.idPlano, this.email, this.id);
  int submit = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                 if(submit == 0){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => MainMenu(cpf)),
                   );
                 }
              }
          ),                                                                                                                                                                                                                                                                                                        
        ),
      body: Container(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16, left: 32
                  ),
                child: Text("Nome:",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 32
                ),
                child: Text(name,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.only(
                top: 22, left: 32
              ),
                child: Text("Email: ",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.only(
                top: 16, left: 32
              ),
                child: Text(this.email,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.only(
                top: 22, left: 32
              ),
                child: Text("Endereço: ",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.only(
                top: 16, left: 32
                ),
                child: Text(address,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.only(
                top: 22, left: 32
              ),
                child: Text("Número:",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.only(
                top: 16, left: 32
              ),
                child: Text(houseNumber.toString(),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.only(
                top: 22, left: 32
              ),
                child: Text("Cpf:",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(padding: const EdgeInsets.only(
                top: 16, left: 32
              ),
                child: Text(cpf,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
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
                        Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => ChangeRegistration(name, address, cpf, houseNumber, idPlano,email, id)),
                        );
                      }
                    },
                  child: Text("Alterar perfil",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }

}