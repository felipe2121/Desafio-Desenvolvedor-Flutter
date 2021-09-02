// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskModel on _TaskModelBase, Store {
  final _$titleAtom = Atom(name: '_TaskModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$checkAtom = Atom(name: '_TaskModelBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$_TaskModelBaseActionController =
      ActionController(name: '_TaskModelBase');

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_TaskModelBaseActionController.startAction(
        name: '_TaskModelBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_TaskModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool value) {
    final _$actionInfo = _$_TaskModelBaseActionController.startAction(
        name: '_TaskModelBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$_TaskModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
check: ${check}
    ''';
  }
}
