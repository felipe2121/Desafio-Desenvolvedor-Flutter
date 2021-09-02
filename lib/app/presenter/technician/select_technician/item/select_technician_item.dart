import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SelectTechnicianItem extends StatelessWidget {
  final TechnicianModel item;
  final itemClick;

  SelectTechnicianItem({required this.item, required this.itemClick});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListTile(
        title: Text(item.name),
        onTap: itemClick,
      );
    });
  }
}