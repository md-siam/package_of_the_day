import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class MyPersistentBottomNavBar extends StatelessWidget {
  const MyPersistentBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Nav Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const BottomNavBar(),
    );
  }
}
