class Emergencia {
  String message;

  Emergencia({this.message});

  Emergencia.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    return data;
  }

  //definição de getters
  String get Message => message;
  String getMessageObject() {
    const start = "Emergencia solicitada com sucesso";
    const end = "por favor aguarde no local";
    String messageReturn = start + "\n" + end;
    return messageReturn;
  }
}