import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:takecare/profilePage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'classes/PacienteObject.dart';
import 'classes/Paciente.dart';

class ChangeRegistration extends StatefulWidget {
  final String name;
  final String address;
  final String cpf;
  final int houseNumber;
  final int idPlano;
  final String email;
  final int id;

  ChangeRegistration(this.name, this.address, this.cpf, this.houseNumber, this.idPlano, this.email, this.id);
  @override
  _ChangeRegistration createState() => _ChangeRegistration(this.name, this.address, this.cpf, this.houseNumber, this.idPlano, this.email, this.id);
}

class _ChangeRegistration extends State<ChangeRegistration> {
  String nome;
  String novoNome = "";
  String email;
  String novoEmail = "";
  String endereco;
  String novoEndereco = "";
  String cpf;
  int id;
  int idPlano;
  int houseNumber;
  int novoNumeroCasa;

  _ChangeRegistration(this.nome, this.endereco, this.cpf, this.houseNumber, this.idPlano, this.email, this.id);

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
                  PacienteObject p = new PacienteObject();
                  Future<Paciente> fetchPaciente(String cpf) async {
                    String jsonBody = '{"cpf": "$cpf"}';
                    final response = await http.post("https://takecare-api.herokuapp.com/api/v1/user/getByCpf", body: jsonBody,
                        headers: {"Accept": "application/json", "Content-Type": "application/json"});
                    if(response.statusCode == 200) {
                      var paciente = Paciente.fromJson(json.decode(utf8.decode(response.bodyBytes)));
                      p.setName(paciente.paciente.getName());
                      p.setEndereco(paciente.paciente.getEndereco());
                      p.setcpf(paciente.paciente.getCpf());
                      p.setNumCasa(paciente.paciente.getNumCasa());
                      p.setIdPlano(paciente.paciente.getIdPlano());
                      p.setEmail(paciente.paciente.getEmail());
                      p.setId(paciente.paciente.getId());
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage(this.cpf, this.nome, this.endereco, this.houseNumber, this.idPlano, this.email, this.id)),
                      );
                      return paciente;
                    }
                  }
                  fetchPaciente(cpf);
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
                      initialValue: nome,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal
                      ),
                      onChanged: (String novoNome) {
                        if(novoNome != nome) {
                          nome = novoNome;
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
                        if(novoEmail != this.email) {
                          this.email = novoEmail;
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
                            String jsonBody = '{"cpf":"$cpf","email":"$email","endereco":"$endereco","id":$id,"idPlano":$idPlano,"name":"$nome","numeroCasa":$houseNumber,"senha":"string"}';
                            final response = await http.post("https://takecare-api.herokuapp.com/api/v1/user/editUser", body: jsonBody,
                                headers: {"Accept": "application/json", "Content-Type": "application/json"});
                            if(response.statusCode == 200) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: new Text("Aviso"),
                                      content: new Text("Dados alterados com sucesso"),
                                      actions: <Widget>[
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
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: new Text("Aviso"),
                                      content: new Text("Houve um problema ao atualizar seus dados, tente novamente mais tarde"),
                                      actions: <Widget>[
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
                          updateUserData();
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
