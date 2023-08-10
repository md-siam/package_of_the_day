import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyAutoSizeText extends StatelessWidget {
  const MyAutoSizeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Size Text')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              'A really long String',
              style: TextStyle(fontSize: 30),
              maxLines: 2,
            ),
            SizedBox(height: 40),
            AutoSizeText(
              'AutoSizeText behaves exactly like a Text. The only difference is that it resizes text to fit within its bounds.',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
              minFontSize: 18,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
