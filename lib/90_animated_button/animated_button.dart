import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

import 'second_page.dart';

class MyAnimatedButton extends StatelessWidget {
  const MyAnimatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Animated Button')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedButton(
              color: Colors.blue,
              onPressed: () {},
              enabled: true,
              shadowDegree: ShadowDegree.light,
              child: const Text(
                'Simple button',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedButton(
              color: Colors.green,
              onPressed: () {},
              enabled: true,
              shadowDegree: ShadowDegree.light,
              duration: 400,
              child: const Text(
                'Slow animation',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
              width: 300,
              color: Colors.redAccent,
              shadowDegree: ShadowDegree.dark,
              enabled: true,
              child: const Text(
                'Navigate to another page',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedButton(
              onPressed: () {
                debugPrint(
                    'you won\'t see this message because button is disabled!');
              },
              color: Colors.green,
              enabled: false,
              child: const Text(
                'I\'m disabled',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedButton(
              onPressed: () {},
              height: 40,
              shadowDegree: ShadowDegree.dark,
              color: Colors.indigo,
              child: const Text(
                'Custom height',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedButton(
              onPressed: () {},
              shadowDegree: ShadowDegree.light,
              color: Colors.green,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedButton(
              onPressed: () {},
              shadowDegree: ShadowDegree.light,
              color: Colors.amber,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Loading...',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
