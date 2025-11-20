import 'package:flutter/material.dart';

class DashPage extends StatelessWidget {
  final String token;
  final int userId;

  const DashPage({
    super.key,
    required this.token,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Dashboard\nToken: $token\nUser ID: $userId"),
    );
  }
}