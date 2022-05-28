import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Player extends StatefulWidget {
  final String? youtubeURL;
  const Player({
    Key? key,
    this.youtubeURL,
  }) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    var url = widget.youtubeURL!;
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false, // is video sound playing?
        loop: true, // is same video repeated?
        autoPlay: false, // is video played when initialized?
      ),
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: _controller),
      builder: (context, player) {
        return Column(
          children: [
            player,
            Text(_controller.metadata.title),
            const SizedBox(height: 8),
            Text(_controller.metadata.author),
            const SizedBox(height: 8),
            Text('${_controller.metadata.duration.inSeconds} seconds'),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(350, 50)),
              child: const Text('Full Screen'),
              onPressed: () => _controller.toggleFullScreenMode(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(350, 50)),

              /// this Text() widget will only work if we add a listener
              /// in our controller `..addListener(())`
              child: Text(_controller.value.isPlaying ? 'Pause' : 'Play'),
              onPressed: () {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              },
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
