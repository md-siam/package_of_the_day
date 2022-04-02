import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persistent Bottom Nav Bar'),
      ),
      body: const Center(
        child: Text('Explore Page', style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
