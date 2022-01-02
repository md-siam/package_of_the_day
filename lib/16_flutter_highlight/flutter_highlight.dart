import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark-reasonable.dart';

class MyFlutterHighlight extends StatelessWidget {
  const MyFlutterHighlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var code = '''class MyNeonSign extends StatelessWidget {
  const MyNeonSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Neon(
              text: 'Cyberpunk',
              color: Colors.blue,
              fontSize: 40,
              flickeringText: false,
            ),
            Neon(
              text: 'NightClub70s',
              color: Colors.purple,
              fontSize: 40,
              flickeringText: false,
            ),
            Neon(
              text: 'TextMeOne',
              color: Colors.teal,
              fontSize: 40,
              flickeringText: false,
            ),
            Neon(
              text: 'Retro',
              color: Colors.green,
              fontSize: 40,
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
''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Highlight'),
      ),
      body: ListView(
        children: [
          HighlightView(
            code,
            language: 'javascript',
            padding: const EdgeInsets.all(12),
            theme: atomOneDarkReasonableTheme,
            textStyle: GoogleFonts.firaCode(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
