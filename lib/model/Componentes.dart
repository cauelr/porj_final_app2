import 'package:flutter/material.dart';

class Campos extends StatelessWidget {
  TextEditingController controller;
  String label;

  Campos({Key? key, required this.controller, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration:
            InputDecoration(labelText: label, border: OutlineInputBorder()),
        controller: controller,
      ),
    );
  }
}

class Button extends StatelessWidget {
  String label;
  var onPressed;
  Color btnColor;
  Color textColor;

  Button(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.btnColor,
      required this.textColor})
      : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        color: btnColor,
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: TextButton(
              onPressed: onPressed,
              child: Text(
                label,
                style: TextStyle(color: textColor),
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.red))))),
        ));
  }
}

class Celula extends StatelessWidget {
  String text;
  double tamanho;
  Color cor;
  Color textColor;

  Celula(
      {Key? key,
      required this.text,
      required this.tamanho,
      required this.cor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        width: tamanho,
        color: cor,
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: textColor),
        )),
      ),
    );
  }
}
