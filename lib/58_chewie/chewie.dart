import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'chewie_player.dart';

class MyChewie extends StatelessWidget {
  const MyChewie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chewie')),
      body: ListView(
        children: [
          ChewiePlayer(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/bullfinch.mp4',
            ),
            looping: true,
          ),
          ChewiePlayer(
            videoPlayerController: VideoPlayerController.network(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            ),
            looping: true,
          ),
          ChewiePlayer(
            videoPlayerController: VideoPlayerController.network(
              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            ),
            looping: true,
          ),
        ],
      ),
    );
  }
}
