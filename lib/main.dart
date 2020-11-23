import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('Transferências'), // title é um widget que recebe outros
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
    ),
    body: Column(
      children: [
        Text('Corpo do Scaffold...'),
      ],
    ),
  )));
}
