import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskItem extends StatelessWidget {
  final TaskModel item;
  final editClicked;
  final deleteClicked;
  final itemClick;

  TaskItem({required this.item, required this.editClicked, required this.deleteClicked, required this.itemClick});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListTile(
        onTap: itemClick,
        title: Text(item.title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              color: Colors.blueAccent,
              icon: Icon(Icons.edit),
              onPressed: editClicked,
            ),
            IconButton(
              color: Colors.redAccent,
              icon: Icon(Icons.delete),
              onPressed: deleteClicked,
            ),
          ],
        ),
      );
    });
  }
}