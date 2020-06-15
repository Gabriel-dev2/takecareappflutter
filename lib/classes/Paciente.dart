import 'PacienteObject.dart';

class Paciente {
  PacienteObject paciente;

  Paciente({this.paciente});

  Paciente.fromJson(Map<String, dynamic> json) {
    paciente = json['paciente'] != null
        ? new PacienteObject.fromJson(json['paciente'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.paciente != null) {
      data['paciente'] = this.paciente.toJson();
    }
    return data;
  }
}