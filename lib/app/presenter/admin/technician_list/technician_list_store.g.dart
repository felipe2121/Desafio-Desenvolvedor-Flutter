// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technician_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TechnicianListStore on _TechnicianListStoreBase, Store {
  final _$listItemsAtom = Atom(name: '_TechnicianListStoreBase.listItems');

  @override
  ObservableList<TechnicianModel> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<TechnicianModel> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  final _$_TechnicianListStoreBaseActionController =
      ActionController(name: '_TechnicianListStoreBase');

  @override
  dynamic addItem(TechnicianModel model) {
    final _$actionInfo = _$_TechnicianListStoreBaseActionController.startAction(
        name: '_TechnicianListStoreBase.addItem');
    try {
      return super.addItem(model);
    } finally {
      _$_TechnicianListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(TechnicianModel model) {
    final _$actionInfo = _$_TechnicianListStoreBaseActionController.startAction(
        name: '_TechnicianListStoreBase.removeItem');
    try {
      return super.removeItem(model);
    } finally {
      _$_TechnicianListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeNameItem(TechnicianModel model) {
    final _$actionInfo = _$_TechnicianListStoreBaseActionController.startAction(
        name: '_TechnicianListStoreBase.changeNameItem');
    try {
      return super.changeNameItem(model);
    } finally {
      _$_TechnicianListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getLengthOfTasks(TechnicianModel technician) {
    final _$actionInfo = _$_TechnicianListStoreBaseActionController.startAction(
        name: '_TechnicianListStoreBase.getLengthOfTasks');
    try {
      return super.getLengthOfTasks(technician);
    } finally {
      _$_TechnicianListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addTask(TechnicianModel technician, TaskModel task) {
    final _$actionInfo = _$_TechnicianListStoreBaseActionController.startAction(
        name: '_TechnicianListStoreBase.addTask');
    try {
      return super.addTask(technician, task);
    } finally {
      _$_TechnicianListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItems: ${listItems}
    ''';
  }
}
