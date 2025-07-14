import 'package:flutter/material.dart';
import 'package:mobile_task/core/widgets/custom_list_tile.dart';

class BuildSubTitle extends StatelessWidget {
  const BuildSubTitle({super.key, required this.widget, required this.width});

  final CustomListTile widget;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.subTitle,
      style: TextStyle(fontSize: width * 0.038, color: Colors.grey[500]),
    );
  }
}
