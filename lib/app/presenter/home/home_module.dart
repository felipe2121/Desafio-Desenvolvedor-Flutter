import 'package:desafio_flutter/app/presenter/admin/admin_page.dart';
import 'package:desafio_flutter/app/presenter/admin/technician_list/attribute_task/attribute_task_page.dart';
import 'package:desafio_flutter/app/presenter/technician/select_technician/select_technician_page.dart';
import 'package:desafio_flutter/app/presenter/technician/technician_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends Module {

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
    ChildRoute('/admin', child: (_, args) => AdminPage()),
    ChildRoute('/attribute_task_list', child: (_, args) => AttributeTaskPage(technician: args.data,)),
    ChildRoute('/select_technician', child: (_, args) => SelectTechnicianPage()),
    ChildRoute('/technician', child: (_, args) => TechnicianPage(technician: args.data,)),
  ];
}