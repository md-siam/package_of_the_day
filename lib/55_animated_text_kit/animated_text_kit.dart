import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyAnimatedTextKit extends StatelessWidget {
  const MyAnimatedTextKit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.white,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Animated Text Kit')),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/background/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            controller: null,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// `Rotate`
                customContainer(
                  widget: SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 20.0, height: 100.0),
                        const Text(
                          'Be',
                          style: TextStyle(fontSize: 43.0),
                        ),
                        const SizedBox(width: 20.0, height: 100.0),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Horizon',
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('AWESOME'),
                              RotateAnimatedText('OPTIMISTIC'),
                              RotateAnimatedText('DIFFERENT'),
                            ],
                            onTap: () => debugPrint("Tap Event"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// `Fade`
                customContainer(
                  widget: SizedBox(
                    height: 100,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          FadeAnimatedText('do IT!'),
                          FadeAnimatedText('do it RIGHT!!'),
                          FadeAnimatedText('do it RIGHT NOW!!!'),
                        ],
                        onTap: () => debugPrint("Tap Event"),
                      ),
                    ),
                  ),
                ),

                /// `Typer`
                customContainer(
                  widget: SizedBox(
                    height: 100,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Bobbers',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                              'It is not enough to do your best,'),
                          TyperAnimatedText('you must know what to do,'),
                          TyperAnimatedText('and then do your best'),
                          TyperAnimatedText('- W.Edwards Deming'),
                        ],
                        onTap: () => debugPrint("Tap Event"),
                      ),
                    ),
                  ),
                ),

                /// `Typewriter`
                customContainer(
                  widget: SizedBox(
                    height: 100,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Agne',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('Discipline is the best tool'),
                          TypewriterAnimatedText('Design first, then code'),
                          TypewriterAnimatedText(
                              'Do not patch bugs out, rewrite them'),
                          TypewriterAnimatedText(
                              'Do not test bugs out, design them out'),
                        ],
                        onTap: () => debugPrint("Tap Event"),
                      ),
                    ),
                  ),
                ),

                /// `Scale`
                customContainer(
                  widget: SizedBox(
                    height: 100,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 70.0,
                        fontFamily: 'Canterbury',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ScaleAnimatedText('Think'),
                          ScaleAnimatedText('Build'),
                          ScaleAnimatedText('Ship'),
                        ],
                        onTap: () => debugPrint("Tap Event"),
                      ),
                    ),
                  ),
                ),

                /// `Colorize`
                customContainer(
                  widget: SizedBox(
                    height: 100,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ColorizeAnimatedText(
                          'Larry Page',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                        ColorizeAnimatedText(
                          'Bill Gates',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                        ColorizeAnimatedText(
                          'Steve Jobs',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                      ],
                      isRepeatingAnimation: true,
                      onTap: () => debugPrint("Tap Event"),
                    ),
                  ),
                ),

                /// `Wavy`
                customContainer(
                  widget: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: DefaultTextStyle(
                      style: const TextStyle(fontSize: 24.0),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('Hello World'),
                          WavyAnimatedText('Look at the waves'),
                        ],
                        isRepeatingAnimation: true,
                        onTap: () => debugPrint("Tap Event"),
                      ),
                    ),
                  ),
                ),

                /// `Flicker`
                customContainer(
                  widget: SizedBox(
                    height: 100,
                    width: 250.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 7.0,
                            color: Colors.white,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          FlickerAnimatedText('Flicker Frenzy'),
                          FlickerAnimatedText('Night Vibes On'),
                          FlickerAnimatedText("C'est La Vie !"),
                        ],
                        onTap: () => debugPrint("Tap Event"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget customContainer({required Widget widget}) {
  return Container(
    width: double.maxFinite,
    margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      border: Border.all(color: Colors.black, width: 1.0),
    ),
    child: widget,
  );
}
