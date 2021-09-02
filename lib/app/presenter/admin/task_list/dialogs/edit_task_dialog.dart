import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../task_list_store.dart';

editTaskDialog(BuildContext context, TaskModel item) {
  final store = Modular.get<TaskListStore>();

  String oldItemTitle = item.title;

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text('Editar atividade'),
        content: TextField(
          onChanged: item.setTitle,
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: 'Nome da atividade'),
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
                item.setTitle(oldItemTitle);
                Modular.to.pop();
              },
              child: Text('Cancelar')),
        ],
      );
    },
  );
}