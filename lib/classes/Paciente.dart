class Paciente {

   static String cpf;
   static String nome;
   static String endereco;
   static int numeroCasa;

  Paciente({cpf, nome, endereco, numeroCasa});

  factory Paciente.fromJson(Map<String, dynamic> json) {
    return Paciente (
      cpf : json['cpf'],
      nome : json['nome'],
      endereco : json['endereco'],
      numeroCasa : json['numeroCasa']
    );

  }
}