import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:mobx/mobx.dart';
part 'task_list_store.g.dart';

class TaskListStore = _TaskListStoreBase with _$TaskListStore;

abstract class _TaskListStoreBase with Store {

  @observable
  ObservableList<TaskModel> listItems = <TaskModel> [].asObservable();

  @action
  addItem(TaskModel model) {
    listItems.add(model);
  }

  @action
  removeItem(TaskModel model) {
    listItems.removeWhere((item) => item.title == model.title);
  }

  @action
  changeNameItem(TaskModel model) {
    listItems[listItems.indexWhere((item) => item.title == model.title)] = model;
  }
}