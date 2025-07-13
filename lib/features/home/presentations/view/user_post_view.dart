import 'package:flutter/material.dart';

class UserPostView extends StatelessWidget {
  const UserPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("User Posts")),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(title: Text('Title'), subtitle: Text('SubTitle')),
            );
          },
        ),
      ),
    );
  }
}
