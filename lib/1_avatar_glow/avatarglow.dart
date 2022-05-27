import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class MyAvatarGlow extends StatelessWidget {
  const MyAvatarGlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(title: const Text('Avatar Glow')),
      body: const Center(
        child: AvatarGlow(
          endRadius: 100,
          glowColor: Colors.white,
          duration: Duration(milliseconds: 3000),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
