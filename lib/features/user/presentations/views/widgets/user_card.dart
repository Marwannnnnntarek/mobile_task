import 'package:flutter/material.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/user_details.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/user_header.dart';

class UserCard extends StatefulWidget {
  const UserCard({super.key, required this.user, this.onTap});

  final UserModel user;
  final VoidCallback? onTap;

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final user = widget.user;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          UserHeader(
            user: user,
            isExpanded: isExpanded,
            onExpandToggle: () {
              setState(() => isExpanded = !isExpanded);
              widget.onTap?.call();
            },
          ),
          const SizedBox(height: 8),
          AnimatedCrossFade(
            firstChild: const SizedBox.shrink(),
            secondChild: UserDetails(user: user),
            crossFadeState:
                isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 300),
          ),
        ],
      ),
    );
  }
}
