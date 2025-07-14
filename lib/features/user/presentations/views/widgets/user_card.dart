import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/info_tile.dart';

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
    final width = MediaQuery.of(context).size.width;
    final fontSize = width * 0.04;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // User name and username
              Expanded(
                child: GestureDetector(
                  onTap: () => context.push('/UserPostView/${user.id}'),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name ?? 'No Name',
                        style: TextStyle(
                          fontSize: fontSize + 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@${user.username ?? 'Unknown'}',
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ),
              ),
              // Expand/Collapse Button
              IconButton(
                icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                  widget.onTap?.call();
                },
              ),
            ],
          ),
          // Details section
          if (isExpanded) const SizedBox(height: 12),
          if (isExpanded) ...[
            InfoTile(icon: Icons.email, text: user.email),
            InfoTile(icon: Icons.phone, text: user.phone),
            InfoTile(icon: Icons.web, text: user.website),
            InfoTile(icon: Icons.business, text: user.company?.name),
            InfoTile(
              icon: Icons.location_on,
              text:
                  user.address != null
                      ? '${user.address!.street}, ${user.address!.city}'
                      : 'No Address',
            ),
          ],
        ],
      ),
    );
  }
}
