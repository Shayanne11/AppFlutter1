import 'package:Byte_Bank/screens/listagem_transferencia.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    BytebankApp(),
  );
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaDeTransferencias(),
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary
        )
      )
    );
  }
}
