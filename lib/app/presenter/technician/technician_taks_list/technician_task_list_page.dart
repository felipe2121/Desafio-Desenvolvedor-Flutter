import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:desafio_flutter/app/presenter/admin/technician_list/technician_list_store.dart';
import 'package:desafio_flutter/app/presenter/technician/item/technician_task_list_tem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TechnicianTaskListPage extends StatelessWidget {
  final store = Modular.get<TechnicianListStore>();

  final TechnicianModel technician;

  TechnicianTaskListPage({required this.technician});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: store.getLengthOfTasks(technician),
            itemBuilder: (_, index) {
              var item = store.listItems[store.listItems.indexWhere((item) => item.name == technician.name)].tasks[index];
              return TechnicianTaskListItem(item: item,);
            },
          );
        },
      ),
    );
  }
}