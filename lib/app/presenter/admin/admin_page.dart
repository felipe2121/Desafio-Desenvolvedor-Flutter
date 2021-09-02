import 'package:desafio_flutter/app/presenter/admin/task_list/task_list_page.dart';
import 'package:desafio_flutter/app/presenter/admin/technician_list/technician_list_page.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Administrador'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Atividates'),
              Tab(text: 'Técnicos'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: TaskListPage(),
            ),
            Center(
              child: TechnicianListPage(),
            ),
          ],
        ),
      ),
    );
  }
}