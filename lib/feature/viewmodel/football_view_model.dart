import 'package:flutter/material.dart';
import 'package:flutter_mobx_vexana_wekeend/core/base_view_model.dart';
import 'package:mobx/mobx.dart';

import '../model/football_model.dart';
import '../service/football_service.dart';
part 'football_view_model.g.dart';

class FootballViewModel = _FootballViewModelBase with _$FootballViewModel;

abstract class _FootballViewModelBase with Store, BaseViewModel {
  late IFootballService service;
  @observable
  FootballModel? footballModel;
  @observable
  bool isloading = false;
  @action
  void changeLoading() {
    isloading = !isloading;
  }

  @action
  Future<void> fetchData() async {
    changeLoading();
    footballModel = await service.fetchData();
    changeLoading();
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {
    service = FootballService(networkManager: networkManager);
    fetchData();
  }
}
