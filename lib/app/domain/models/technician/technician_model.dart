import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:mobx/mobx.dart';
part 'technician_model.g.dart';

class TechnicianModel = _TechnicianModelBase with _$TechnicianModel;

abstract class _TechnicianModelBase with Store {

  @observable
  String name = '';

  @observable
  List<TaskModel> tasks = [];

  @action
  setName(String value) => name = value;

  _TechnicianModelBase({required this.name, required this.tasks});
}