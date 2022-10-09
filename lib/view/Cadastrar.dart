import 'package:flutter/material.dart';
import 'package:porj_final_app2/model/Ocorrencia.dart';
import 'package:porj_final_app2/view/ListaOcorrencias.dart';
import 'package:porj_final_app2/model/Pessoa.dart';
import '../model/Componentes.dart';

class Cadastrar extends StatefulWidget {
  List<Pessoa> p = <Pessoa>[];
  Cadastrar(this.p);

  _Cadastrar createState() => _Cadastrar(p);
}

class _Cadastrar extends State<Cadastrar> {
  TextEditingController nome = TextEditingController();
  TextEditingController cpf = TextEditingController();
  TextEditingController sexo = TextEditingController();
  TextEditingController descricao = TextEditingController();
  TextEditingController img = TextEditingController();

  List<Pessoa> ocorrencia = <Pessoa>[];

  _Cadastrar(this.ocorrencia);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Campos(controller: nome, label: "Nome"),
        Campos(controller: cpf, label: "CPF"),
        Campos(controller: sexo, label: "Sexo"),
        Campos(controller: descricao, label: "Descrição"),
        Button(
            onPressed: () {},
            label: "Upload Imagem",
            btnColor: Colors.black,
            textColor: Colors.amber),
        Button(
            onPressed: () {
              setState(() {
                Pessoa pessoa = Pessoa(nome.text, cpf.text, sexo.text,
                    new Ocorrencia(descricao.text, img.text));
                ocorrencia.add(pessoa);

                nome.text = "";
                cpf.text = "";
                sexo.text = "";
                descricao.text = "";
                img.text = "";
              });
            },
            label: "Registrar Ocorrência",
            btnColor: Colors.blue,
            textColor: Colors.amber)
      ],
    );
  }
}
