import 'package:intl/intl.dart';

class Historico {
  String datahora;
  String placaAmbulancia;
  int idChamado;
  String nomeSintoma;
  String nomeDoPlano;
  int idlogatendente;
  int idPaciente;
  String message;

  Historico({this.datahora, this.placaAmbulancia, this.idChamado, this.nomeSintoma, this.nomeDoPlano, this.idlogatendente, this.idPaciente, this.message});

  Historico.fromJson(Map<String, dynamic> json) {
    datahora = json['datahora'];
    placaAmbulancia = json['placaAmbulancia'];
    idChamado = json['idChamado'];
    nomeSintoma = json['nomeSintoma'];
    nomeDoPlano = json['nomeDoPlano'];
    idlogatendente = json['idlogatendente'];
    idPaciente = json['idPaciente'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['datahora'] = this.datahora;
    data['placaAmbulancia'] = this.placaAmbulancia;
    data['idChamado'] = this.idChamado;
    data['nomeSintoma'] = this.nomeSintoma;
    data['nomeDoPlano'] = this.nomeDoPlano;
    data['idlogatendente'] = this.idlogatendente;
    data['idPaciente'] = this.idPaciente;
    data['message'] = this.message;
    return data;
  }

  //definição de getters
  String get DataHora => datahora;
  String getDataHoraObject() {
    final DateFormat formatter = DateFormat('dd/MM/yyyy HH:mm:ss');
    var parsedDate = DateTime.parse(datahora);
    final String formatted = formatter.format(parsedDate);
    return formatted;
  }

  int get IdChamado => idChamado;
  int getIdChamadoObject() {
    return idChamado;
  }

  int get IdPaciente => idPaciente;
  int getIdPacienteObject() { 
    return idPaciente;
  }
}