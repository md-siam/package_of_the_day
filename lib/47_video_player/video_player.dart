import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'player_widget.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({Key? key}) : super(key: key);

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  final asset = 'assets/videos/bullfinch.mp4';
  final network =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(asset)
    //_controller = VideoPlayerController.network(network)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => _controller.play());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = _controller.value.volume == 0;

    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: Column(
        children: [
          PlayerWidget(controller: _controller),
          const SizedBox(height: 32),
          // for mute button
          if (_controller != null && _controller.value.isInitialized)
            CircleAvatar(
              radius: 30,
              backgroundColor: isMuted ? Colors.red : Colors.green,
              child: IconButton(
                icon: Icon(
                  isMuted ? Icons.volume_mute : Icons.volume_up,
                  color: Colors.white,
                ),
                onPressed: () {
                  _controller.setVolume(isMuted ? 1 : 0);
                },
              ),
            ),
        ],
      ),
    );
  }
}
