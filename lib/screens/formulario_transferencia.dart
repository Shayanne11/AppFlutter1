
import 'package:Byte_Bank/components/campo_texto.dart';
import 'package:Byte_Bank/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioDeTransferencia extends StatefulWidget {
  @override
  FormularioDeTransferenciaState createState() =>
      FormularioDeTransferenciaState();
}

class FormularioDeTransferenciaState extends State<FormularioDeTransferencia> {
  final TextEditingController controladorDoCampoConta = TextEditingController();

  final TextEditingController controladorDoCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Transferências da Shy'), // title é um widget que recebe outros
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CampoTexto(
                controlador: controladorDoCampoConta,
                rotulo: 'Numero da Conta',
                dica: '0000'),
            CampoTexto(
                controlador: controladorDoCampoValor,
                rotulo: 'Valor',
                dica: '0.00',
                icone: Icons.monetization_on),
            RaisedButton(
              onPressed: () => criaTransferencia(context),
              // o onpressed tem uma função lambda ou seja com () vazio
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }

  void criaTransferencia(BuildContext context) {
    debugPrint('clicou no confirmar');

    final int conta = int.tryParse(controladorDoCampoConta.text);
    final double valor = double.tryParse(controladorDoCampoValor.text);

    if (conta != null && valor != null) {
      final transferenciasCriada = Transferencia(conta, valor);
      debugPrint('Transferencia criada: $transferenciasCriada');

      Navigator.pop(context, transferenciasCriada);
    }
  }
}
