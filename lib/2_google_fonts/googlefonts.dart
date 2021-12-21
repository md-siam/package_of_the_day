import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyGoogleFonts extends StatelessWidget {
  const MyGoogleFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(title: const Text('Google Fonts')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'SPACE INVADERS',
              style:
                  GoogleFonts.pressStart2p(fontSize: 20, color: Colors.white),
            ),
            Text(
              'ENTER A COIN TO PLAY',
              style:
                  GoogleFonts.pressStart2p(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
