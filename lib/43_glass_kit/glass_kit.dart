import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class MyGlassKit extends StatelessWidget {
  const MyGlassKit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(
      color: Colors.white,
      fontSize: 26,
    );
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: const Text('Glass Kit'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background/WallpaperDog-20500155.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlassContainer.clearGlass(
                  height: 200,
                  width: 300,
                  alignment: Alignment.center,
                  borderRadius: BorderRadius.circular(20),
                  child: Text(
                    'Clear Glass',
                    style: style,
                  ),
                ),
                const SizedBox(height: 60),
                GlassContainer.frostedGlass(
                  height: 200,
                  width: 300,
                  alignment: Alignment.center,
                  borderRadius: BorderRadius.circular(20),
                  child: Text(
                    'Frosted Glass',
                    style: style,
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
