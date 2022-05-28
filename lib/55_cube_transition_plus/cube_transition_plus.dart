import 'package:cube_transition_plus/cube_transition_plus.dart';
import 'package:flutter/material.dart';
import 'second_screen.dart';

class MyCubeTransitionPlus extends StatelessWidget {
  const MyCubeTransitionPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cube Transition Plus')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Second Page'),
          onPressed: () {
            Navigator.of(context).push(
              CubePageRoute(
                enterPage: const SecondScreen(),
                exitPage: this,
                duration: const Duration(milliseconds: 900),
              ),
            );
          },
        ),
      ),
    );
  }
}
