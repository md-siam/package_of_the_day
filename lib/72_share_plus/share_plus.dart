import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class MySharePlus extends StatelessWidget {
  const MySharePlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //String youtubeURL = 'https://www.youtube.com/watch?v=CNUBhb_cM6E';
    String imageURL =
        'https://images.unsplash.com/photo-1654099521678-bfb05b565b03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMzQwMzl8MHwxfGFsbHw0fHx8fHx8Mnx8MTY1NDE2ODI0MQ&ixlib=rb-1.2.1&q=80&w=1080';

    return Scaffold(
      appBar: AppBar(title: const Text('Share Plus')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 290,
                width: 340,
                child: Image.network(imageURL, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: const Text('Share Photo', style: TextStyle(fontSize: 20)),
              onPressed: () async {
                //await Share.share('It\'s explore the world.\n\n$youtubeURL');
                String url = imageURL;
                final tempDir = await getTemporaryDirectory();
                final path = '${tempDir.path}.jpg';
                // Dio() will download the image in tempDir
                await Dio().download(url, path); 

                Share.shareFiles([path],text: 'Let\'s explore the world.');
              },
            ),
          ],
        ),
      ),
    );
  }
}
