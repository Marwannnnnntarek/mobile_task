import 'package:flutter/material.dart';
import 'package:mobile_task/core/widgets/build_list_tile.dart';
import 'package:mobile_task/core/widgets/custom_list_tile.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({
    super.key,
    required this.widget,
    required this.context,
    required this.width,
  });

  final CustomListTile widget;
  final BuildContext context;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(16),
      color: Theme.of(context).cardColor,
      child: BuildListTile(widget: widget, context: context, width: width),
    );
  }
}
