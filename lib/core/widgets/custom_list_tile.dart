import 'package:flutter/material.dart';
import 'package:mobile_task/core/widgets/build_card.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  final String title, subTitle;
  final Function()? onTap;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final responsivePadding = width * 0.04;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: responsivePadding, vertical: 8),
      child: BuildAnimatedTile(
        slideAnimation: _slideAnimation,
        fadeAnimation: _fadeAnimation,
        widget: widget,
        context: context,
        width: width,
      ),
    );
  }
}

class BuildAnimatedTile extends StatelessWidget {
  const BuildAnimatedTile({
    super.key,
    required Animation<Offset> slideAnimation,
    required Animation<double> fadeAnimation,
    required this.widget,
    required this.context,
    required this.width,
  }) : _slideAnimation = slideAnimation,
       _fadeAnimation = fadeAnimation;

  final Animation<Offset> _slideAnimation;
  final Animation<double> _fadeAnimation;
  final CustomListTile widget;
  final BuildContext context;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: BuildCard(widget: widget, context: context, width: width),
      ),
    );
  }
}
