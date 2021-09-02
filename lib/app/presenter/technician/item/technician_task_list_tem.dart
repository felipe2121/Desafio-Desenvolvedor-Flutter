import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TechnicianTaskListItem extends StatelessWidget {

  final TaskModel item;

  TechnicianTaskListItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(item.title),
          trailing: Switch(
            value: item.check,
            onChanged: (bool value) {
              item.setCheck(value);
            },
          ),
        );
      },
    );
  }
}