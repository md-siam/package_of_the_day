import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyLottie extends StatefulWidget {
  const MyLottie({Key? key}) : super(key: key);

  @override
  State<MyLottie> createState() => _MyLottieState();
}

class _MyLottieState extends State<MyLottie>
    with SingleTickerProviderStateMixin {
  // animation controller
  late final AnimationController _controller;
  bool bookmarked = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: const Text('Lottie'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            GestureDetector(
              child: Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_xdfeea13.json',
                controller: _controller,
              ),
              onTap: () {
                if (bookmarked == false) {
                  bookmarked = true;
                  _controller.forward();
                } else {
                  bookmarked = false;
                  _controller.reverse();
                }
              },
            ),
            Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_kkflmtur.json',
            ),
          ],
        ),
      ),
    );
  }
}
