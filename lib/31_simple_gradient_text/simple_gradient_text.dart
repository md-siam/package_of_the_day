import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MySimpleGradientText extends StatelessWidget {
  const MySimpleGradientText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Gradient Text')),
      body: Center(
        child: GradientText(
          'Gradient Text Example',
          style: const TextStyle(fontSize: 40.0),
          colors: const [Colors.blue, Colors.red, Colors.teal],
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
