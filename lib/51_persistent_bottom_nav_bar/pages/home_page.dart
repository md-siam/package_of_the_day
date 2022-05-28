import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persistent Bottom Nav Bar'),
      ),
      body: const Center(
        child: Text('Home Page', style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
