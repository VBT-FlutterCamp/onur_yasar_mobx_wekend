// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'football_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FootballViewModel on _FootballViewModelBase, Store {
  final _$footballModelAtom =
      Atom(name: '_FootballViewModelBase.footballModel');

  @override
  FootballModel? get footballModel {
    _$footballModelAtom.reportRead();
    return super.footballModel;
  }

  @override
  set footballModel(FootballModel? value) {
    _$footballModelAtom.reportWrite(value, super.footballModel, () {
      super.footballModel = value;
    });
  }

  final _$isloadingAtom = Atom(name: '_FootballViewModelBase.isloading');

  @override
  bool get isloading {
    _$isloadingAtom.reportRead();
    return super.isloading;
  }

  @override
  set isloading(bool value) {
    _$isloadingAtom.reportWrite(value, super.isloading, () {
      super.isloading = value;
    });
  }

  final _$fetchDataAsyncAction =
      AsyncAction('_FootballViewModelBase.fetchData');

  @override
  Future<void> fetchData() {
    return _$fetchDataAsyncAction.run(() => super.fetchData());
  }

  final _$_FootballViewModelBaseActionController =
      ActionController(name: '_FootballViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_FootballViewModelBaseActionController.startAction(
        name: '_FootballViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_FootballViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
footballModel: ${footballModel},
isloading: ${isloading}
    ''';
  }
}
