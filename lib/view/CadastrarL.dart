import 'package:flutter/material.dart';

class CadastrarL extends StatelessWidget {
  Widget nome;
  Widget cpf;
  Widget sexo;
  Widget descricao;
  Widget image;
  Widget button;

  CadastrarL(
      {Key? key,
      required this.nome,
      required this.cpf,
      required this.sexo,
      required this.descricao,
      required this.image,
      required this.button})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [nome, cpf, sexo, descricao, image, button],
    );
  }
}
