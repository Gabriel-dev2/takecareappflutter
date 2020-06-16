import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:takecare/mainMenu.dart';
import 'package:takecare/profilePage.dart';
import 'package:http/http.dart' as http;
import 'package:takecare/classes/Paciente.dart';
import 'package:takecare/classes/PacienteObject.dart';
import 'dart:convert';

class ChangeRegistration extends StatefulWidget {
  @override
  _ChangeRegistration createState() => _ChangeRegistration();
}

class _ChangeRegistration extends State<ChangeRegistration> {
  String testeNome = "Gabriel Lucas";
  String novoNome = "";
  String email = "gabriel.lima@outlook.com";
  String novoEmail = "";
  String endereco = "Rua Faisão, Ouro Preto, Olinda";
  String novoEndereco = "";
  String cpf = "01234567809";
  int id;
  int idPlano;
  String novoCpf = "";
  int houseNumber = 27;
  int novoNumeroCasa;

  int submit = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                if(submit == 0){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(testeNome,endereco,cpf, houseNumber, 1, email)),
                  );
                }
              }
          ),
        ),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 42
              ),
              child: Text("Nome:",
                style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/7.5,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 15),
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
                  child: TextFormField(
                      initialValue: testeNome,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal
                      ),
                      onChanged: (String novoNome) {
                        if(novoNome != testeNome) {
                          testeNome = novoNome;
                        }
                      }
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5, left: 42
              ),
              child: Text("Email:",
                style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/7.5,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 15),
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
                  child: TextFormField(
                      initialValue: email,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal
                      ),
                      onChanged: (String novoEmail) {
                        if(novoEmail != email) {
                          email = novoEmail;
                        }
                      }
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 4, left: 42
              ),
              child: Text("Endereco:",
                style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height/7.5,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 15),
              child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 50,
                      padding: EdgeInsets.only(
                          top: 1, left: 16, right: 16, bottom: 4
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
                      child: TextFormField(
                          initialValue: endereco,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontStyle: FontStyle.normal
                          ),
                          onChanged: (String novoEndereco) {
                            if(novoEndereco != endereco) {
                              endereco = novoEndereco;
                            }
                          }
                      ),
                    ),
                  ]
              )
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 4, left: 42
              ),
              child: Text("Número:",
                style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/7.5,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 15),
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
                  child: TextFormField(
                      initialValue: houseNumber.toString(),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal
                      ),
                      onChanged: (String numero) {
                        novoNumeroCasa = int.parse(numero);
                        if(novoNumeroCasa != houseNumber) {
                          houseNumber = novoNumeroCasa;
                        }
                      }
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 4, left: 42
              ),
              child: Text("Cpf:",
                style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/7.5,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 15),
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
                  child: TextFormField(
                      initialValue: cpf,
                      enabled: false,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal
                      ),
                      onChanged: (String novoCpf) {
                        if(novoCpf != cpf) {
                          cpf = novoCpf;
                        }
                      }
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 25),
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
                          Future<String> updateUserData() async {
                            String cpf = this.cpf;
                            String jsonBody = '{"cpf":"$cpf","email":"$email","endereco":"$endereco","id":$id,"idPlano":$idPlano,"name":"$testeNome","numeroCasa":$houseNumber,"senha":"string"}';
                            final response = await http.post("https://takecare-api.herokuapp.com/api/v1/user/editUser", body: jsonBody,
                                headers: {"Accept": "application/json", "Content-Type": "application/json"});
                            if(response.statusCode == 200) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChangeRegistration()),
                              );
                            }
                          }
                        }
                      },
                      child: Text("Salvar",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ]
              )
          )
        ],
      )
    );
  }

}
