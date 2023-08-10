import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';

class MyMarquee extends StatelessWidget {
  const MyMarquee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marquee')),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/background/bulb.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Container(
                height: 40,
                color: Colors.red,
                child: Marquee(
                  text: 'Some sample text that takes some space.',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 20.0,
                  velocity: 100.0,
                  pauseAfterRound: const Duration(seconds: 1),
                  startPadding: 10.0,
                  accelerationDuration: const Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: const Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                ),
              ),
              const SizedBox(height: 20.0),
              const Center(
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.arrowUp,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'That\'s cool 😮 !!',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
