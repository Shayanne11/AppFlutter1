
import 'package:Byte_Bank/components/item_de_transferencia.dart';
import 'package:Byte_Bank/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'formulario_transferencia.dart';

class ListaDeTransferencias extends StatefulWidget {
  final List<Transferencia> transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaDeTransferenciaState();
  }
}

class ListaDeTransferenciaState extends State<ListaDeTransferencias> {
  @override
  Widget build(BuildContext context) {
    debugPrint('*******ListaDeTransferenciasState -> build *****');

    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),

        onPressed: () {
          Future<Transferencia> future =
          Navigator.push(context, MaterialPageRoute(builder: (ctx) {
            return FormularioDeTransferencia();
          }));

          future.then((transferenciaRecebida) {
            if (transferenciaRecebida != null) {
              debugPrint(
                  'Transferencia recebida no future: $transferenciaRecebida');

              Future.delayed(Duration(seconds: 5)).then((value) {
                setState(() {
                  widget.transferencias.add(transferenciaRecebida);
                  debugPrint('Lista atualizada:' +
                      widget.transferencias.length.toString());
                });
              });

            }
          });
        }, // onPressed
      ),
      body: ListView.builder(
        itemCount: widget.transferencias.length,
        itemBuilder: (BuildContext context, int index) {
          final Transferencia transferencia = widget.transferencias[index];
          return ItemDeTransferencia(transferencia);
        },
      ),
    );
  } // build
}
