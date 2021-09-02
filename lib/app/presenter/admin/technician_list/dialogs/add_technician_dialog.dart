import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../technician_list_store.dart';

addTechnicianDialog(BuildContext context) {

  final store = Modular.get<TechnicianListStore>();

  var model = TechnicianModel(name: '', tasks: []);

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text('Adicionar técnico'),
        content: TextField(
          onChanged: model.setName,
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: 'Nome do técnico'),
        ),
        actions: [
          TextButton(
              onPressed: () {
                store.addItem(model);
                Modular.to.pop();
              },
              child: Text('Salvar')),
          TextButton(
              onPressed: () {
                Modular.to.pop();
              },
              child: Text('Cancelar')),
        ],
      );
    },
  );
}