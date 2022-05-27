import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MyFlutterTTS extends StatefulWidget {
  const MyFlutterTTS({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyFlutterTTSState createState() => _MyFlutterTTSState();
}

class _MyFlutterTTSState extends State<MyFlutterTTS> {
  String description =
      "The birth centenary of Father of the Nation Bangabandhu Sheikh Mujibur Rahman is being celebrated across the country in 2020-21. Under the ICT Division of the Government of the People’s Republic of Bangladesh, different initiatives have been taken by the Bangladesh Computer Council’s iDEA project to organize the Mujib Year, most notably the “Bangabandhu Innovation Grant 2020 (BIG)” event.";
  bool isPlaying = false;
  final FlutterTts _flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();

    _flutterTts.setStartHandler(() {
      setState(() {
        isPlaying = true;
      });
    });

    _flutterTts.setCompletionHandler(() {
      setState(() {
        isPlaying = false;
      });
    });
  }

  // Android settings
  void speechSettingsAndroid() {
    _flutterTts.setLanguage("en-US");
    _flutterTts.setPitch(1.0);
    _flutterTts.setSpeechRate(1.0);
    _flutterTts.setVolume(1.0);
  }

  // iOS settings
  void speechSettingsIOS() {
    _flutterTts.setLanguage("en-US");
    _flutterTts.setPitch(1.0);
    _flutterTts.setSpeechRate(.5);
    _flutterTts.setVolume(1.0);
  }

  Future _speak(String text) async {
    if (text.isNotEmpty) {
      var result = await _flutterTts.speak(text);
      if (result == 1) {
        setState(() {
          isPlaying = true;
        });
      }
    }
  }

  Future _stop() async {
    var result = await _flutterTts.stop();
    if (result == 1) {
      setState(() {
        isPlaying = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter TTS'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Text-To-Read',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 340,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        description,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.ltr,
                      ),
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
                        speechSettingsIOS();
                        //speechSettingsAndroid();
                        isPlaying ? _stop() : _speak(description);
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
