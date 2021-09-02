import 'package:desafio_flutter/app/presenter/admin/technician_list/technician_list_store.dart';
import 'package:desafio_flutter/app/presenter/technician/dialogs/select_technician_click.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'item/select_technician_item.dart';

class SelectTechnicianPage extends StatelessWidget {
  final store = Modular.get<TechnicianListStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha um técnico'),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: store.listItems.length,
            itemBuilder: (_, index) {
              var item = store.listItems[index];
              return SelectTechnicianItem(
                item: item,
                itemClick: () {
                  selectTechnicianClickDialog(context, item);
                },
              );
            },
          );
        },
      ),
    );
  }
}