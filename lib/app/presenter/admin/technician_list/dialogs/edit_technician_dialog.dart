import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../technician_list_store.dart';

editTechnicianDialog(BuildContext context, TechnicianModel item) {

  final store = Modular.get<TechnicianListStore>();

  String oldItemName = item.name;

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text('Editar técnico'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: item.setName,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nome do técnico'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed('/attribute_task_list', arguments: item);
                },
                child: Text('Atribuir atividade'),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {
                store.changeNameItem(item);
                Modular.to.pop();
              },
              child: Text('Salvar')),
          TextButton(
              onPressed: () {
                item.setName(oldItemName);
                Modular.to.pop();
              },
              child: Text('Cancelar')),
        ],
      );
    },
  );
}