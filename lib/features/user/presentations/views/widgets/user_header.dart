import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({
    super.key,
    required this.user,
    required this.isExpanded,
    required this.onExpandToggle,
  });

  final UserModel user;
  final bool isExpanded;
  final VoidCallback onExpandToggle;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final fontSize = width * 0.043;

    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => context.push('/UserPostView/${user.id}'),
            borderRadius: BorderRadius.circular(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name ?? 'No Name',
                  style: TextStyle(
                    fontSize: fontSize + 1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '@${user.username ?? 'unknown'}',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: fontSize * 0.9,
                  ),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            isExpanded ? Icons.expand_less : Icons.expand_more,
            size: 24,
          ),
          onPressed: onExpandToggle,
        ),
      ],
    );
  }
}
