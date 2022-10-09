import 'package:flutter/material.dart';
import '../model/Componentes.dart';
import '../model/Pessoa.dart';

class ListaOcorrencias extends StatelessWidget {
  List<Pessoa> getOcorrencia = <Pessoa>[];

  ListaOcorrencias(this.getOcorrencia);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Celula(
                text: "Nome",
                tamanho: 120,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
            Celula(
                text: "CPF",
                tamanho: 120,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
            Celula(
                text: "Sexo",
                tamanho: 120,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
            Celula(
                text: "Descrição",
                tamanho: 240,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
            Celula(
                text: "Imagem",
                tamanho: 240,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
          ],
        ),
        for (int i = 0; i < getOcorrencia.length; i++)
          Row(
            children: [
              Celula(
                  text: getOcorrencia[i].getNome(),
                  tamanho: 120,
                  cor: Colors.grey,
                  textColor: Colors.black),
              Celula(
                  text: getOcorrencia[i].getCpf(),
                  tamanho: 120,
                  cor: Colors.grey,
                  textColor: Colors.black),
              Celula(
                  text: getOcorrencia[i].getSexo(),
                  tamanho: 120,
                  cor: Colors.grey,
                  textColor: Colors.black),
              Celula(
                  text: getOcorrencia[i].getDescricao(),
                  tamanho: 120,
                  cor: Colors.grey,
                  textColor: Colors.black),
              Celula(
                  text: getOcorrencia[i].getImg(),
                  tamanho: 120,
                  cor: Colors.grey,
                  textColor: Colors.black),
            ],
          )
      ],
    );
  }
}
