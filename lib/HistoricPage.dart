import 'package:flutter/material.dart';
import 'package:takecare/classes/Historico.dart';
import 'package:takecare/mainMenu.dart';
import 'package:http/http.dart' as http;

class HistoricPage extends StatefulWidget {

  final String cpf;
  final String nomePaciente;
  final String datahora;
  final int idChamado;
  
  HistoricPage(this.cpf, this.nomePaciente, this.datahora, this.idChamado);

  @override
  _HistoricPageState createState() => _HistoricPageState(this.cpf, this.nomePaciente, this.datahora, this.idChamado);
}

class _HistoricPageState extends State<HistoricPage> {

  String cpf;
  String nomePaciente;
  String datahora;
  int idChamado;

  _HistoricPageState(this.cpf, this.nomePaciente, this.datahora, this.idChamado);

  int submit = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Historico"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (submit == 0) {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => MainMenu(cpf))
                );
            }
          }
        )
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16, left:32
                ),
                child: Text("Data/Hora",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic
                  )
                )
              )
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16, left:32
                ),
                child: Text(this.datahora,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  )
                )
              )
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 22, left:32
                ),
                child: Text("Chamado",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                  )
                )
              )
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16, left:32
                ),
                child: Text(this.idChamado.toString(),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  )
                )
              )
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 22, left: 32
                ),
                child: Text("Paciente",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                  )
                )
              )
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16, left:32
                ),
                child: Text(this.nomePaciente,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
  
}