import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../technician_list_store.dart';

attributeTaskDialog(BuildContext context, TechnicianModel technician, TaskModel task) {

  final store = Modular.get<TechnicianListStore>();

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text('Atribuir essa atividade'),
        actions: [
          TextButton(
              onPressed: () {
                store.addTask(technician, task);
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