import 'package:desafio_flutter/app/presenter/admin/task_list/task_list_store.dart';
import 'package:desafio_flutter/app/presenter/admin/technician_list/technician_list_store.dart';
import 'package:desafio_flutter/app/presenter/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => TaskListStore()),
    Bind.singleton((i) => TechnicianListStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}