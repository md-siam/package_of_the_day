import 'package:flutter/material.dart';
import 'youtube_player.dart';

class MyYoutubePlayerIframe extends StatelessWidget {
  const MyYoutubePlayerIframe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String youTubeURL1 = 'https://www.youtube.com/watch?v=aWzlQ2N6qqg';
    const String youTubeURL2 = 'https://www.youtube.com/watch?v=DtQycgMD4HQ';
    const String youTubeURL3 = 'https://www.youtube.com/watch?v=jLMBLuGJTsA';

    return Scaffold(
      appBar: AppBar(title: const Text('Youtube Player Iframe')),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            YouTubePlayer(youtubeURL: youTubeURL1),
            SizedBox(height: 15),
            YouTubePlayer(youtubeURL: youTubeURL2),
            SizedBox(height: 15),
            YouTubePlayer(youtubeURL: youTubeURL3),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
