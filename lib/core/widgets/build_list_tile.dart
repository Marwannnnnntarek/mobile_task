import 'package:flutter/material.dart';
import 'package:mobile_task/core/widgets/build_sub_title.dart';
import 'package:mobile_task/core/widgets/build_title.dart';
import 'package:mobile_task/core/widgets/custom_list_tile.dart';

class BuildListTile extends StatelessWidget {
  const BuildListTile({
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
    return ListTile(
      onTap: widget.onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      title: BuildTitle(widget: widget, width: width),
      subtitle: BuildSubTitle(widget: widget, width: width),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }
}
