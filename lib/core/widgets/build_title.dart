import 'package:flutter/material.dart';
import 'package:mobile_task/core/widgets/custom_list_tile.dart';

class BuildTitle extends StatelessWidget {
  const BuildTitle({super.key, required this.widget, required this.width});

  final CustomListTile widget;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(fontSize: width * 0.045, fontWeight: FontWeight.w600),
    );
  }
}
