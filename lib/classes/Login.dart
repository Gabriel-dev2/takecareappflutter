class Login {
  String cpf;
  String message;

  Login({this.cpf, this.message});

  Login.fromJson(Map<String, dynamic> json) {
    cpf = json['cpf'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cpf'] = this.cpf;
    data['message'] = this.message;
    return data;
  }

  // definição de getters
  String get Cpf => cpf;
  String getCpfObject() {
    return cpf;
  }
}