import 'package:flutter/material.dart';
import 'onbording_screen.dart';

class MyIntroductionScreen extends StatelessWidget {
  const MyIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Introduction Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OnBoardingScreen(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Start\nOnboard Screen',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
