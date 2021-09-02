// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technician_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TechnicianModel on _TechnicianModelBase, Store {
  final _$nameAtom = Atom(name: '_TechnicianModelBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$tasksAtom = Atom(name: '_TechnicianModelBase.tasks');

  @override
  List<TaskModel> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(List<TaskModel> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  final _$_TechnicianModelBaseActionController =
      ActionController(name: '_TechnicianModelBase');

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_TechnicianModelBaseActionController.startAction(
        name: '_TechnicianModelBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_TechnicianModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
tasks: ${tasks}
    ''';
  }
}
