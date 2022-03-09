import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_vexana_wekeend/core/base/base_view.dart';
import 'package:flutter_mobx_vexana_wekeend/feature/viewmodel/football_view_model.dart';
import 'package:flutter_mobx_vexana_wekeend/product/constant/app_string.dart';
import 'package:flutter_mobx_vexana_wekeend/product/widget/card_widget.dart';

class FootballView extends StatelessWidget {
  const FootballView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: BaseView<FootballViewModel>(
          viewModel: FootballViewModel(),
          onModelReady: (model) {
            model.setContext(context);
            model.init();
          },
          onPageBuilder:
              (BuildContext context, FootballViewModel footballViewModel) {
            return Observer(builder: (_) {
              return footballViewModel.isloading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: footballViewModel
                          .footballModel?.football?.teams?.length,
                      itemBuilder: (context, index) {
                        return _buildBodyColumn(
                            footballViewModel, index, context);
                      });
            });
          }),
    );
  }

  Widget _buildBodyColumn(
      FootballViewModel footballViewModel, int index, BuildContext context) {
    return CustomCardWidget(
      footballModel: footballViewModel.footballModel,
      index: index,
    );
  }

  AppBar get _buildAppbar => AppBar(
        title: Text(AppString().appbarText),
        centerTitle: true,
      );
}
