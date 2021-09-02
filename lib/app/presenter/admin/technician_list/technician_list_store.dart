import 'package:desafio_flutter/app/domain/models/task/task_model.dart';
import 'package:desafio_flutter/app/domain/models/technician/technician_model.dart';
import 'package:mobx/mobx.dart';
part 'technician_list_store.g.dart';

class TechnicianListStore = _TechnicianListStoreBase with _$TechnicianListStore;

abstract class _TechnicianListStoreBase with Store {
  @observable
  ObservableList<TechnicianModel> listItems =
  <TechnicianModel>[].asObservable();

  @action
  addItem(TechnicianModel model) {
    listItems.add(model);
  }

  @action
  removeItem(TechnicianModel model) {
    listItems.removeWhere((item) => item.name == model.name);
  }

  @action
  changeNameItem(TechnicianModel model) {
    listItems[listItems.indexWhere((item) => item.name == model.name)] = model;
  }

  @action
  getLengthOfTasks(TechnicianModel technician) {
    return listItems[listItems.indexWhere((item) => item.name == technician.name)].tasks.length;
  }

  @action
  addTask(TechnicianModel technician, TaskModel task) {
    if(listItems[listItems.indexWhere((item) => item.name == technician.name)].tasks.contains(task)) {}
    else {
      listItems[listItems.indexWhere((item) => item.name == technician.name)].tasks
          .add(task);
    }
  }
}