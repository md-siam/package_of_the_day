import 'package:flutter/material.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discovery')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Discovery Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 20),
            Text(
              'Convex Bottom Bar',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
