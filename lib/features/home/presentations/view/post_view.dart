import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(title: Text('Title'), subtitle: Text('Body')),
        );
      },
    );
  }
}
