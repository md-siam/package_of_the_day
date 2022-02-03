import 'package:flutter/material.dart';
import 'util/tinder_card.dart';

class MyFlutterSwipable extends StatefulWidget {
  const MyFlutterSwipable({Key? key}) : super(key: key);

  @override
  State<MyFlutterSwipable> createState() => _MyFlutterSwipableState();
}

class _MyFlutterSwipableState extends State<MyFlutterSwipable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Swipable')),
      body: Center(
        child: SizedBox(
          height: 350,
          width: 250,
          child: Stack(
            children: const [
              // Tinder card stack
              TinderCard(color: Colors.deepPurple),
              TinderCard(color: Colors.orange),
              TinderCard(color: Colors.green),
              TinderCard(color: Colors.cyan),
            ],
          ),
        ),
      ),
    );
  }
}
