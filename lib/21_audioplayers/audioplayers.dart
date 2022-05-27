import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyAudioplayer extends StatefulWidget {
  const MyAudioplayer({Key? key}) : super(key: key);

  @override
  State<MyAudioplayer> createState() => _MyAudioplayerState();
}

class _MyAudioplayerState extends State<MyAudioplayer> {
  AudioCache audioCache = AudioCache(prefix: 'assets/audios/');
  late AudioPlayer player;
  bool isPlaying = false;

  void playAudio() async {
    player = await audioCache.play(
      'james_bond.wav',
      mode: PlayerMode.LOW_LATENCY,
    );
  }

  void stopAudio() {
    player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Audioplayer')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 360,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Image.asset(
                          'assets/images/audioplayer/audioplayer.jpeg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: RawMaterialButton(
                    padding: const EdgeInsets.all(10.0),
                    elevation: 12.0,
                    onPressed: () {
                      setState(() {
                        if (isPlaying == false) {
                          isPlaying = true;
                          playAudio();
                        } else {
                          isPlaying = false;
                          stopAudio();
                        }
                      });
                    },
                    shape: const CircleBorder(),
                    fillColor: Colors.white,
                    child: isPlaying
                        ? const Icon(
                            Icons.stop,
                            size: 60,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.play_arrow,
                            size: 60,
                            color: Colors.red,
                          ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
