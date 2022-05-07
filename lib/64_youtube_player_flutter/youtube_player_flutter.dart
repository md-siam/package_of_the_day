import 'package:flutter/material.dart';

import 'player.dart';

class MyYoutubePlayerFlutter extends StatelessWidget {
  const MyYoutubePlayerFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Youtube Player Flutter')),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Player(youtubeURL: 'https://www.youtube.com/watch?v=bON-KPiiNCk'),
          ],
        ),
      ),
    );
  }
}
