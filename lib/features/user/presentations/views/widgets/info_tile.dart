import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({super.key, required this.icon, required this.text});

  final IconData icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.grey[500]),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text ?? 'N/A',
              style: const TextStyle(fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
