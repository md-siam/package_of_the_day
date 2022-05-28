import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persistent Bottom Nav Bar'),
      ),
      body: const Center(
        child: Text('Shopping Page', style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
