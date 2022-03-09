import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'package:flutter_mobx_vexana_wekeend/feature/model/football_model.dart';

class CustomCardWidget extends StatelessWidget {
  final FootballModel? footballModel;
  final int index;
  const CustomCardWidget({
    Key? key,
    this.footballModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: context.dynamicWidth(0.12),
          height: context.dynamicHeight(0.06),
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(40)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              footballModel?.football?.teams?[index].flag ?? "",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        title: Text(
          footballModel?.football?.teams?[index].name ?? "",
        ),
        subtitle: Text(
          footballModel?.football?.teams?[index].fifaCode ?? "",
        ),
        trailing: const Icon(Icons.sports_football_sharp),
      ),
    );
  }
}
