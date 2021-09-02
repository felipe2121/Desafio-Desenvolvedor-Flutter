import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../technician_list_store.dart';

deleteTechnicianDialog(BuildContext context, TechnicianModel item) {

  final store = Modular.get<TechnicianListStore>();

  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text('Deseja apagar tecnico?'),
        actions: [
          TextButton(
              onPressed: () {
                store.removeItem(item);
                Modular.to.pop();
              },
              child: Text('Confirmar')),
          TextButton(
              onPressed: () {
                Modular.to.pop();
              },
              child: Text('Cancelar')),
        ],
      );
    },
  );
}