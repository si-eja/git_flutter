import 'package:flutter/material.dart';
import 'package:flutter_iuran/dash.dart';
import 'package:flutter_iuran/prof.dart';

class HomePage extends StatefulWidget {
  final String token;
  final int userId;

  const HomePage({
    super.key,
    required this.token,
    required this.userId,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      DashPage(token: widget.token, userId: widget.userId),
      ProfilePage(token: widget.token, userId: widget.userId),
      const Text("School"),
      const Text("Settings"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Iuran Warga"),
        backgroundColor: Colors.black,
      ),
      body: Center(child: pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (i) => setState(() => _selectedIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}