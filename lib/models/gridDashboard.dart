import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:takecare/HistoricPage.dart';
import 'dart:convert';
import 'package:takecare/checkBoxTela.dart';
import 'package:takecare/classes/Emergencia.dart';
import 'package:takecare/classes/Historico.dart';
import 'package:takecare/classes/Paciente.dart';
import 'package:takecare/classes/PacienteObject.dart';
import 'package:takecare/profilePage.dart';
import 'package:takecare/MapsPage.dart';
import 'package:takecare/waitScreen.dart';

class GridDashboard extends StatelessWidget {

  final String cpf;

  GridDashboard(this.cpf);

  Item item1 = new Item(
    title: "Hospitais",
    subtitle: "Ver Hospitais",
    iconName: Icon(Icons.local_hospital).icon
  );

  Item item2 = new Item(
    title: "Perfil",
    subtitle: "Meu Perfil",
    iconName: Icon(Icons.people).icon
  );

  Item item3 = new Item(
    title: "Ambulância",
    subtitle: "Chamar Ajuda",
    iconName: Icon(Icons.time_to_leave).icon
  );

  Item item4 = new Item(
    title: "Histórico",
    subtitle: "Meu Historico",
    iconName: Icon(Icons.recent_actors).icon
  );

  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1, item2, item3, item4];
    int submit = 0;
    int id = 0;

    return Flexible(
        child: GridView.count(
            childAspectRatio: 1.0,
            padding: EdgeInsets.only(
          left: 16, right: 16
        ),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data){
            return Container(
              decoration: BoxDecoration(color: Color(0xff453658), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: Icon(data.iconName, size: 42, color: Colors.white),
                      onPressed: () {
                        if(submit == 0){
                          if("Hospitais" == data.title) {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => MapsPage(this.cpf))
                            );
                          }
                          else if("Perfil" == data.title){
                            PacienteObject p = new PacienteObject();
                            Future<Paciente> fetchPaciente() async {
                              String cpf = this.cpf;
                              String jsonBody = '{"cpf": "$cpf"}';
                              final response = await http.post("https://takecare-api.herokuapp.com/api/v1/user/getByCpf", body: jsonBody,
                                  headers: {"Accept": "application/json", "Content-Type": "application/json"});
                              if(response.statusCode == 200) {
                                var paciente = Paciente.fromJson(json.decode(utf8.decode(response.bodyBytes)));
                                p.setcpf(paciente.paciente.cpf);
                                p.setNumCasa(paciente.paciente.getNumCasa());
                                p.setIdPlano(paciente.paciente.getIdPlano());
                                p.setEmail(paciente.paciente.getEmail());
                                p.setId(paciente.paciente.getId());
                                p.setName(paciente.paciente.getName());
                                p.setEndereco(paciente.paciente.getEndereco());
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProfilePage(p.getCpf(), p.getName(), p.getEndereco(), p.getNumCasa(), p.getIdPlano(), p.getEmail(), p.getId())),
                                );
                                return paciente;
                              }
                            }
                            fetchPaciente();
                          }
                          else if("Ambulância" == data.title) {
                            Future<Emergencia> fetchEmergencia() async {
                              String idString = id.toString();
                              final response = await http.get("https://takecare-api.herokuapp.com/api/call/emergency/$idString",
                                headers: {"Accept": "application/json", "Content-Type": "application/json"}
                              );
                              print(response.statusCode);
                              if (response.statusCode == 200) {
                                var retorno = Emergencia.fromJson(json.decode(response.body));
                                String message = retorno.getMessageObject();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => WaitScreen(this.cpf, message)),
                                );
                              }
                           }
                            PacienteObject p = new PacienteObject();
                            Future<Paciente> fetchPaciente() async {
                              String cpf = this.cpf;
                              String jsonBody = '{"cpf": "$cpf"}';
                              final response = await http.post("https://takecare-api.herokuapp.com/api/v1/user/getByCpf", body: jsonBody,
                                  headers: {"Accept": "application/json", "Content-Type": "application/json"});
                              if(response.statusCode == 200) {
                                var paciente = Paciente.fromJson(json.decode(utf8.decode(response.bodyBytes)));
                                p.setcpf(paciente.paciente.cpf);
                                p.setNumCasa(paciente.paciente.getNumCasa());
                                p.setIdPlano(paciente.paciente.getIdPlano());
                                p.setEmail(paciente.paciente.getEmail());
                                p.setId(paciente.paciente.getId());
                                p.setName(paciente.paciente.getName());
                                p.setEndereco(paciente.paciente.getEndereco());
                                id = p.getId();
                                fetchEmergencia();
                                return paciente;
                              }
                            }
                            fetchPaciente();
                          }
                          else if("Histórico" == data.title) {
                            String _nomePaciente = "";
                            Future<Historico> fetchHistorico() async {
                              String idString = id.toString();
                              final response = await http.get("https://takecare-api.herokuapp.com/api/history/getHistory/$idString", 
                              headers: {"Accept": "application/json", "Content-Type": "application/json"});
                              if (response.statusCode == 200) {
                                var retorno = Historico.fromJson(json.decode(response.body));
                                String dataHora = retorno.getDataHoraObject();
                                int idChamado = retorno.getIdChamadoObject();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HistoricPage(this.cpf, _nomePaciente, dataHora, idChamado))
                                );
                                return Historico.fromJson(json.decode(response.body));
                              }
                            }
                            PacienteObject p = new PacienteObject();
                            Future<Paciente> fetchPaciente() async {
                              String cpf = this.cpf;
                              String jsonBody = '{"cpf": "$cpf"}';
                              final response = await http.post("https://takecare-api.herokuapp.com/api/v1/user/getByCpf", body: jsonBody,
                                  headers: {"Accept": "application/json", "Content-Type": "application/json"});
                              if(response.statusCode == 200) {
                                var paciente = Paciente.fromJson(json.decode(utf8.decode(response.bodyBytes)));
                                p.setcpf(paciente.paciente.cpf);
                                p.setNumCasa(paciente.paciente.getNumCasa());
                                p.setIdPlano(paciente.paciente.getIdPlano());
                                p.setEmail(paciente.paciente.getEmail());
                                p.setId(paciente.paciente.getId());
                                p.setName(paciente.paciente.getName());
                                p.setEndereco(paciente.paciente.getEndereco());
                                id = p.getId();
                                _nomePaciente = p.getName();
                                fetchHistorico();
                                return paciente;
                              }
                            }
                            fetchPaciente();
                          }
                        }
                      }),
                  SizedBox(
                    height: 14,
                  ),
                  Text(data.title, style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    )
                  ),),
                  SizedBox(height: 8,),
                  Text(data.subtitle, style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      )
                    )
                  )
                ],
              ),
            );
          }
          ).toList() ,
        ),

    );
  }
}

class Item {
  String title;
  String subtitle;
  IconData iconName;
  Item({this.title, this.subtitle, this.iconName});
}