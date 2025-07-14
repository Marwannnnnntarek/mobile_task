import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.label, required this.value});

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          Text('$label ', style: const TextStyle(fontWeight: FontWeight.w600)),
          Text(value ?? 'N/A'),
        ],
      ),
    );
  }
}
