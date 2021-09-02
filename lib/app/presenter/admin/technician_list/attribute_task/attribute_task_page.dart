import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:desafio_flutter/app/presenter/admin/task_list/dialogs/add_task_dialog.dart';
import 'package:desafio_flutter/app/presenter/admin/task_list/dialogs/delete_task_dialog.dart';
import 'package:desafio_flutter/app/presenter/admin/task_list/dialogs/edit_task_dialog.dart';
import 'package:desafio_flutter/app/presenter/admin/task_list/item/task_item.dart';
import 'package:desafio_flutter/app/presenter/admin/task_list/task_list_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dialogs/attribute_task_dialog.dart';

class AttributeTaskPage extends StatelessWidget {

  final store = Modular.get<TaskListStore>();

  final TechnicianModel technician;

  AttributeTaskPage({required this.technician});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atribuir atividade'),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
              itemCount: store.listItems.length,
              itemBuilder: (_, index) {
                var task = store.listItems[index];
                return TaskItem(
                  item: task,
                  editClicked: () {
                    editTaskDialog(context, task);
                  },
                  deleteClicked: () {
                    deleteTaskDialog(context, task);
                  },
                  itemClick: () {
                    attributeTaskDialog(context, technician, task);
                  },
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTaskDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}