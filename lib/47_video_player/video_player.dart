import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'player_widget.dart';

class MyVideoPlayer extends StatelessWidget {
  const MyVideoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: Column(
        children: [
          VideoPlayerWidget(
            isLooping: true,
            isMute: false,
            videoPlayerController: VideoPlayerController.network(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',

              /// Set `mixWithOthers: true` for playing multiple videos
              /// simultaneously
              ///
              videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
            ),
          ),
          const SizedBox(height: 30),
          VideoPlayerWidget(
            isLooping: true,
            isMute: true,
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/bullfinch.mp4',
              videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
            ),
          ),
        ],
      ),
    );
  }
}
