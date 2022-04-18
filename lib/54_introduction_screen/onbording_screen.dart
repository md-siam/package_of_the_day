import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          image: buildImage(
              'assets/images/introduction_screen/undraw_Books_re_8gea.png'),
          title: 'A reader lives a thousands lives',
          body: 'The man who never lives only one.',
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          image: buildImage(
              'assets/images/introduction_screen/undraw_mathematics_4otb.png'),
          title: 'Featured Books',
          body: 'Available right at your fingerprints',
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          image: buildImage(
              'assets/images/introduction_screen/undraw_Notebook_re_id0r.png'),
          title: 'Simple UI',
          body: 'For enhanced reading experience',
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          image: buildImage(
              'assets/images/introduction_screen/undraw_road_to_knowledge_m8s0.png'),
          title: 'Today a reader, tomorrow a leader',
          body: 'Start your journey',
          decoration: getPageDecoration(),
        ),
      ],
      next: const Icon(Icons.arrow_forward),
      done: const Text('Read', style: TextStyle(fontWeight: FontWeight.bold)),
      onDone: () {
        Navigator.pop(context);
      },
    );
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle:
            const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: const TextStyle(fontSize: 20),
        imagePadding: const EdgeInsets.all(24),
        bodyPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
        pageColor: Colors.white,
      );
}
