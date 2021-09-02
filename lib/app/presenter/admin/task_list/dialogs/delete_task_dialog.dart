import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../task_list_store.dart';

deleteTaskDialog(BuildContext context, TaskModel item) {

  final store = Modular.get<TaskListStore>();

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text('Deseja apagar atividade?'),
        actions: [
          TextButton(
              onPressed: () {
                store.removeItem(item);
                Modular.to.pop();
              },
              child: Text('Confirmar')),
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