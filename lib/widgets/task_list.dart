import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaksList extends StatelessWidget {
  const TaksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile()
      ],
    );
  }
}