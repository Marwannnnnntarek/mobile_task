import 'package:flutter/material.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/info_tile.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
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
    );
  }
}
