import 'package:mobx/mobx.dart';
part 'task_model.g.dart';

class TaskModel = _TaskModelBase with _$TaskModel;

abstract class _TaskModelBase with Store {

  @observable
  String title = '';

  @observable
  bool check = false;

  @action
  setTitle(String value) => title = value;

  @action
  setCheck(bool value) => check = value;

  _TaskModelBase({required this.title, required this.check});
}