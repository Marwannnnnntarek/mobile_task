import 'package:flutter/material.dart';

class UserPostView extends StatelessWidget {
  const UserPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(title: Text("Users Posts"))),
    );
  }
}
