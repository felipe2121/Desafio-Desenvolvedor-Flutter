import 'package:desafio_flutter/app/presenter/admin/task_list/task_list_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dialogs/add_task_dialog.dart';
import 'dialogs/delete_task_dialog.dart';
import 'dialogs/edit_task_dialog.dart';
import 'item/task_item.dart';

class TaskListPage extends StatelessWidget {
  final store = Modular.get<TaskListStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return ListView.builder(
              itemCount: store.listItems.length,
              itemBuilder: (_, index) {
                var item = store.listItems[index];
                return TaskItem(
                  item: item,
                  editClicked: () {
                    editTaskDialog(context, item);
                  },
                  deleteClicked: () {
                    deleteTaskDialog(context, item);
                  },
                  itemClick: () {},
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