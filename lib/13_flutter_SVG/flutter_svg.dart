import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyFlutterSVG extends StatelessWidget {
  const MyFlutterSVG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter SVG'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'SVG image from asset folder:',
              style: TextStyle(fontSize: 24),
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset('assets/svg/flutter.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
