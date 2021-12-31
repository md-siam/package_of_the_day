import 'package:aurora/aurora.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAuroraGradient extends StatelessWidget {
  const MyAuroraGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              top: -10,
              left: -100,
              child: Aurora(
                size: 300,
                colors: [
                  const Color(0xffc2e59c).withOpacity(1),
                  const Color(0xff64b3f4).withOpacity(1)
                ],
              ),
            ),
            const Positioned(
                top: -50,
                right: -50,
                child: Aurora(
                  size: 200,
                  colors: [Color(0xFFfbd07c), Color(0xFFf7f779)],
                )),
            const Positioned(
                bottom: -100,
                right: -300,
                child: Aurora(
                  size: 600,
                  colors: [Color(0xFFff0f7b), Color(0xFFf89b29)],
                )),
            const Positioned(
                bottom: -50,
                left: -100,
                child: Aurora(
                  size: 200,
                  colors: [Color(0xFF595cff), Color(0xFFc6f8ff)],
                )),
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Aurora",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.7),
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      "Gradients",
                      style: TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.7),
                        letterSpacing: 1.2,
                      ),
                    ),
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
