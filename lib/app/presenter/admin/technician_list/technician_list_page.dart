import 'package:desafio_flutter/app/presenter/admin/technician_list/technician_list_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dialogs/add_technician_dialog.dart';
import 'dialogs/delete_technician_dialog.dart';
import 'dialogs/edit_technician_dialog.dart';
import 'item/technician_item.dart';

class TechnicianListPage extends StatelessWidget {
  final store = Modular.get<TechnicianListStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return ListView.builder(
              itemCount: store.listItems.length,
              itemBuilder: (_, index) {
                var item = store.listItems[index];
                return TechnicianItem(
                  item: item,
                  editClicked: () {
                    editTechnicianDialog(context, item);
                  },
                  deleteClicked: () {
                    deleteTechnicianDialog(context, item);
                  },
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTechnicianDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}