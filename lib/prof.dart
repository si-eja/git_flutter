import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String token;
  final int userId;

  const ProfilePage({
    super.key,
    required this.token,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile\nToken: $token\nUser ID: $userId"),
    );
  }
}