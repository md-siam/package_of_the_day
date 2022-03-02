import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'basic_overlay_widget.dart';

class PlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const PlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  Widget buildVideoPlayer() {
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller),
    );
  }

  @override
  Widget build(BuildContext context) {
    return controller != null && controller.value.isInitialized
        ? Container(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                buildVideoPlayer(),
                Positioned.fill(
                  child: BasicOverlayWidget(controller: controller),
                ),
              ],
            ),
          )
        : Container(
            height: 200,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
  }
}
