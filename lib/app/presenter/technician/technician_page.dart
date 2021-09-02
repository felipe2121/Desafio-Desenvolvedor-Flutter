import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:desafio_flutter/app/presenter/technician/technician_taks_list/technician_task_list_page.dart';
import 'package:flutter/material.dart';

class TechnicianPage extends StatelessWidget {
  final TechnicianModel technician;

  TechnicianPage({required this.technician});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Técnico: ${technician.name}'),
      ),
      body: TechnicianTaskListPage(technician: technician,),
    );
  }
}