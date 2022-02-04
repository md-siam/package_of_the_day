import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'pages/home_page.dart';
import 'pages/discovery_page.dart';
import 'pages/add_page.dart';
import 'pages/message_page.dart';
import 'pages/profile_page.dart';

class MyConvexBottomBar extends StatefulWidget {
  const MyConvexBottomBar({Key? key}) : super(key: key);

  @override
  State<MyConvexBottomBar> createState() => _MyConvexBottomBarState();
}

class _MyConvexBottomBarState extends State<MyConvexBottomBar> {
  int _selectIndex = 2;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const DiscoveryPage(),
    const AddPage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.deepPurple,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        //optional, default as 0
        initialActiveIndex: _selectIndex,
        onTap: (int i) {
          _navigateBottomBar(i);
        },
      ),
    );
  }
}
