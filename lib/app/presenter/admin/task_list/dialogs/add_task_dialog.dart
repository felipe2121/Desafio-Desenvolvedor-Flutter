import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../task_list_store.dart';

addTaskDialog(BuildContext context) {

  final store = Modular.get<TaskListStore>();

  var model = TaskModel(title: '', check: false);

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text('Adicionar atividade'),
        content: TextField(
          onChanged: model.setTitle,
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: 'Nome da atividade'),
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