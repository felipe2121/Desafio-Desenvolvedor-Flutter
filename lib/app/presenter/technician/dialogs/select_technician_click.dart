import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

selectTechnicianClickDialog(BuildContext context, TechnicianModel item) {

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text('Selecionar técnico: ${item.name}?'),
        actions: [
          TextButton(
              onPressed: () {
                Modular.to.pushNamed('/technician', arguments: item);
                Modular.to.pop();
              },
              child: Text('Sim')),
          TextButton(
              onPressed: () {
                Modular.to.pop();
              },
              child: Text('Nao')),
        ],
      );
    },
  );
}