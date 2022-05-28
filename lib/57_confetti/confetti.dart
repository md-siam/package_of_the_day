import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class MyConfetti extends StatefulWidget {
  const MyConfetti({Key? key}) : super(key: key);

  @override
  State<MyConfetti> createState() => _MyConfettiState();
}

class _MyConfettiState extends State<MyConfetti> {
  bool isPlaying = false;
  final controller = ConfettiController();

  @override
  void initState() {
    super.initState();

    /// Listen to states: playing, stopped
    controller.addListener(() {
      setState(() {
        isPlaying = controller.state == ConfettiControllerState.playing;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(title: const Text('Confetti')),
          body: Center(
            child: ElevatedButton(
              child: Text(isPlaying ? 'Stop 🥳' : 'Celebrate 🥳'),
              onPressed: () {
                if (isPlaying) {
                  controller.stop();
                } else {
                  controller.play();
                }
              },
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: controller,
          shouldLoop: true,

          // set direction
          // blastDirection: -pi / 2, //up
          // blastDirection: 0, //right
          // blastDirection: pi / 2, //down
          // blastDirection: pi, //left

          /// all direction
          blastDirectionality: BlastDirectionality.explosive,

          /// set emission count
          emissionFrequency: 0.50, // 0.0 -> 1.0
          numberOfParticles: 20,

          /// set intensity
          minBlastForce: 10,
          maxBlastForce: 100,
        ),
      ],
    );
  }
}
