// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskListStore on _TaskListStoreBase, Store {
  final _$listItemsAtom = Atom(name: '_TaskListStoreBase.listItems');

  @override
  ObservableList<TaskModel> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<TaskModel> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  final _$_TaskListStoreBaseActionController =
      ActionController(name: '_TaskListStoreBase');

  @override
  dynamic addItem(TaskModel model) {
    final _$actionInfo = _$_TaskListStoreBaseActionController.startAction(
        name: '_TaskListStoreBase.addItem');
    try {
      return super.addItem(model);
    } finally {
      _$_TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(TaskModel model) {
    final _$actionInfo = _$_TaskListStoreBaseActionController.startAction(
        name: '_TaskListStoreBase.removeItem');
    try {
      return super.removeItem(model);
    } finally {
      _$_TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeNameItem(TaskModel model) {
    final _$actionInfo = _$_TaskListStoreBaseActionController.startAction(
        name: '_TaskListStoreBase.changeNameItem');
    try {
      return super.changeNameItem(model);
    } finally {
      _$_TaskListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItems: ${listItems}
    ''';
  }
}
