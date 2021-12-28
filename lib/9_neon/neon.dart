import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class MyNeonSign extends StatelessWidget {
  const MyNeonSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Neon(
              text: 'Cyberpunk',
              color: Colors.blue,
              fontSize: 40,
              font: NeonFont.Cyberpunk,
              flickeringText: false,
            ),
            Neon(
              text: 'NightClub70s',
              color: Colors.purple,
              fontSize: 40,
              font: NeonFont.NightClub70s,
              flickeringText: false,
            ),
            Neon(
              text: 'TextMeOne',
              color: Colors.teal,
              fontSize: 40,
              font: NeonFont.TextMeOne,
              flickeringText: false,
            ),
            Neon(
              text: 'Retro',
              color: Colors.green,
              fontSize: 40,
              font: NeonFont.Membra,
              flickeringText: false,
              flickeringLetters: const [0, 1],
            ),
            Neon(
              text: 'Beon',
              color: Colors.red,
              fontSize: 40,
              font: NeonFont.Beon,
              flickeringText: false,
            ),
          ],
        ),
      ),
    );
  }
}
