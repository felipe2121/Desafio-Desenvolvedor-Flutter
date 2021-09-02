import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TechnicianItem extends StatelessWidget {
  final TechnicianModel item;
  final editClicked;
  final deleteClicked;

  TechnicianItem({required this.item, required this.editClicked, required this.deleteClicked});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListTile(
        title: Text(item.name),
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