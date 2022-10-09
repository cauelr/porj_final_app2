import 'package:porj_final_app2/model/Pessoa.dart';
import 'package:porj_final_app2/view/Cadastrar.dart';
import 'package:porj_final_app2/view/CadastrarL.dart';
import 'package:porj_final_app2/model/Componentes.dart';
import 'package:porj_final_app2/view/Inicio.dart';
import 'package:porj_final_app2/view/ListaOcorrencias.dart';
import '../model/Ocorrencia.dart';

import 'package:flutter/material.dart';

class MyAppStateFulWidget extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyAppStateFulWidget> {
  TextEditingController nome = TextEditingController();
  TextEditingController cpf = TextEditingController();
  TextEditingController sexo = TextEditingController();
  TextEditingController descricao = TextEditingController();
  TextEditingController img = TextEditingController();

  List<Pessoa> ocorrencia = <Pessoa>[];

  int iSelected = 0;

  void selectorScreen(int i) {
    setState(() {
      iSelected = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = <Widget>[
      Inicio(),
      CadastrarL(
          nome: Campos(controller: nome, label: "Nome"),
          cpf: Campos(controller: cpf, label: "CPF"),
          sexo: Campos(controller: sexo, label: "Sexo"),
          descricao: Campos(controller: descricao, label: "Descrição"),
          image: Button(
              onPressed: () {},
              label: "Upload Imagem",
              btnColor: Colors.black,
              textColor: Colors.amber),
          button: Button(
              onPressed: () {
                setState(() {
                  Pessoa p = Pessoa(nome.text, cpf.text, sexo.text,
                      new Ocorrencia(descricao.text, img.text));
                  ocorrencia.add(p);

                  nome.text = "";
                  cpf.text = "";
                  sexo.text = "";
                  descricao.text = "";
                  img.text = "";
                });
              },
              label: "Registrar Ocorrência",
              btnColor: Colors.black,
              textColor: Colors.amber)),
      ListaOcorrencias(ocorrencia)
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                width: 50,
                height: 50,
                child: Image.asset('assets/images/logo.png')),
            Container(
              margin: EdgeInsets.all(10),
              child: Text("Boletim de Ocorrência"),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.amber),
        child: Center(
          child: screens.elementAt(iSelected),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicío"),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: "Cadastrar",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list_outlined),
              label: "Lista de Ocorrências"),
        ],
        onTap: selectorScreen,
        backgroundColor: Colors.black,
        unselectedItemColor: Color.fromARGB(255, 50, 110, 141),
        selectedItemColor: Color.fromARGB(255, 0, 63, 171),
      ),
    );
  }
}
