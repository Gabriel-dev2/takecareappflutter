import 'package:flutter/material.dart';
import 'package:takecare/classes/PacienteObject.dart';
import 'package:takecare/homePage.dart';
import 'package:takecare/mainMenu.dart';

import 'classes/Paciente.dart';

class ProfilePage extends StatefulWidget {

  final String name;
  final String address;
  final String cpf;
  final int houseNumber;
  final int idPlano;
  final String email;
  ProfilePage(this.name, this.address, this.cpf, this.houseNumber, this.idPlano, this.email);
  @override
  _ProfilePageState createState() => _ProfilePageState(name: this.name, address: this.address, cpf: this.cpf, houseNumber: this.houseNumber, idPlano: this.idPlano, email: this.email);
}


class _ProfilePageState extends State<ProfilePage> {

  final String name;
  final String address;
  final String cpf;
  final int houseNumber;
  final int idPlano;
  final String email;
  _ProfilePageState({Key key, @required this.name, this.address, this.cpf, this.houseNumber, this.idPlano, this.email});

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