
class PacienteObject {
  String cpf;
  String email;
  String endereco;
  int id;
  int idPlano;
  String name;
  int numeroCasa;


  PacienteObject(
      {this.cpf,
        this.email,
        this.endereco,
        this.id,
        this.idPlano,
        this.name,
        this.numeroCasa});

  PacienteObject.fromJson(Map<String, dynamic> json) {
    cpf = json['cpf'];
    email = json['email'];
    endereco = json['endereco'];
    id = json['id'];
    idPlano = json['idPlano'];
    name = json['name'];
    numeroCasa = json['numeroCasa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cpf'] = this.cpf;
    data['email'] = this.email;
    data['endereco'] = this.endereco;
    data['id'] = this.id;
    data['idPlano'] = this.idPlano;
    data['name'] = this.name;
    data['numeroCasa'] = this.numeroCasa;
    return data;
  }

  // criando getter and setters
  void setcpf(String cpf){
    this.cpf = cpf;
  }

  String getCpf() {
    return this.cpf;
  }

  void setEmail(String email) {
    this.email = email;
  }

  String getEmail() {
    return this.email;
  }

  void setEndereco(String endereco) {
    this.endereco = endereco;
  }

  String getEndereco() {
    return this.endereco;
  }

  void setId(int id) {
    this.id = id;
  }

  int getId() {
    return this.id;
  }

  void setIdPlano(int idPlano) {
    this.idPlano = idPlano;
  }

  int getIdPlano() {
    return this.idPlano;
  }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  void setNumCasa(int numCasa) {
    this.numeroCasa = numCasa;
  }

  int getNumCasa() {
    return this.numeroCasa;
  }

}