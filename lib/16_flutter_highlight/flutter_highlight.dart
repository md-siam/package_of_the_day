import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark-reasonable.dart';
import 'code.dart';

class MyFlutterHighlight extends StatelessWidget {
  const MyFlutterHighlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Highlight'),
      ),
      body: ListView(
        children: [
          HighlightView(
            Code().dartCode, // dartCode from code.dart file
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
