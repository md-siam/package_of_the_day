import 'package:flutter/material.dart';

class MyAvatarGlow extends StatefulWidget {
  const MyAvatarGlow({Key? key}) : super(key: key);

  @override
  _MyAvatarGlowState createState() => _MyAvatarGlowState();
}

class _MyAvatarGlowState extends State<MyAvatarGlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Glow'),
      ),
    );
  }
}
