import 'package:flutter/material.dart';
import 'package:takecare/homePage.dart';

import 'classes/Paciente.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}


//int age = 12;

class _ProfilePageState extends State<ProfilePage> {
  // mock
  String name = "Gabriel Lucas";
  String address = 'Rua Faisão, Ouro Preto';
  String cpf = '01234567809';
  int houseNumber = 27;

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
                   showDialog(
                       context: context,
                       builder: (BuildContext context) {
                         return AlertDialog(
                           title: new Text("Aviso"),
                           content: new Text("Você está prestes a sair, tem certeza que deseja continuar"),
                           actions: <Widget>[
                             new FlatButton(
                               child: new Text("Sair"),
                               onPressed: (){
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => HomePage()),
                                 );
                               },
                             ),
                             new FlatButton(
                                 child: new Text("Fechar"),
                               onPressed: (){
                                 Navigator.of(context).pop();
                               }
                             )
                           ],
                         );
                       }
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
//            Align(
//              alignment: Alignment.centerLeft,
//              child: Padding(padding: const EdgeInsets.only(
//                top: 22, left: 32
//              ),
//                child: Text("Idade: ",
//                  style: TextStyle(
//                    fontSize: 20.0,
//                    fontStyle: FontStyle.normal
//                  ),
//                ),
//              ),
//            ),
//            Align(
//              alignment: Alignment.centerLeft,
//              child: Padding(padding: const EdgeInsets.only(
//                top: 16, left: 32
//              ),
//                child: Text(age.toString(),
//                  style: TextStyle(
//                    fontSize: 20.0,
//                    fontStyle: FontStyle.normal
//                  ),
//                ),
//              ),
//            ),
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
            )
          ],
        ),
      ),
    );
  }

}