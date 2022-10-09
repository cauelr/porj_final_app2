import 'package:porj_final_app2/model/Ocorrencia.dart';

class Pessoa {
  String id = '';
  String nome;
  String cpf;
  String sexo;
  Ocorrencia ocorrencia;

  Pessoa(this.nome, this.cpf, this.sexo, this.ocorrencia);

  String getDescricao() {
    return ocorrencia.getDescricao();
  }

  String getImg() {
    return ocorrencia.getImg();
  }

  @override
  String toString() {
    return "$id | $nome | $cpf | $sexo ";
  }

  String getSexo() {
    return sexo;
  }

  String getId() {
    return id;
  }

  String getNome() {
    return nome;
  }

  String getCpf() {
    return cpf;
  }
}
