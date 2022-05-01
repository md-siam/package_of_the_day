import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final bool isLooping;
  final bool isMute;
  final VideoPlayerController videoPlayerController;

  const VideoPlayerWidget({
    Key? key,
    required this.isLooping,
    required this.isMute,
    required this.videoPlayerController,
  }) : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.videoPlayerController
      ..addListener(() => setState(() {}))
      ..setLooping(widget.isLooping)
      ..setVolume(widget.isMute ? 0 : 1)
      ..initialize().then((_) => widget.videoPlayerController.play());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = _controller.value.volume == 0;

    return _controller.value.isInitialized
        ? Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                    Positioned.fill(
                      child: VideoOverlay(
                        controller: _controller,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              /// for `mute` button
              ///
              CircleAvatar(
                radius: 20,
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
          )
        : const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }
}

/// This widget displays the control `buttons` over the video
///
class VideoOverlay extends StatelessWidget {
  final VideoPlayerController controller;
  const VideoOverlay({
    Key? key,
    required this.controller,
  }) : super(key: key);

  Widget buildIndicator() => VideoProgressIndicator(
        controller,
        allowScrubbing: true,
      );

  Widget buildPlay() => controller.value.isPlaying
      ? Container()
      : Container(
          color: Colors.black26,
          alignment: Alignment.center,
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 80,
          ),
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        controller.value.isPlaying ? controller.pause() : controller.play();
      },
      child: Stack(
        children: [
          buildPlay(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: buildIndicator(),
          )
        ],
      ),
    );
  }
}
