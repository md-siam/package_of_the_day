import 'package:flutter/material.dart';
import 'package:parallax_animation/parallax_animation.dart';

class MyParallaxAnimation extends StatelessWidget {
  MyParallaxAnimation({Key? key}) : super(key: key);

  final List _background = [
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_2.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_2.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
  ];

  final List _title = [
    'Background 1',
    'Background 2',
    'Background 3',
    'Background 4',
    'Background 1',
    'Background 2',
    'Background 3',
    'Background 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Parallax Animation')),
      body: ParallaxArea(
        child: ListView.builder(
          //scrollDirection: Axis.horizontal,
          itemCount: _background.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: SizedBox(
                    height: 150,
                    child: ParallaxWidget(
                      child: Center(
                        child: Text(
                          '${_title[index]}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      background: Image.asset(
                        '${_background[index]}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
