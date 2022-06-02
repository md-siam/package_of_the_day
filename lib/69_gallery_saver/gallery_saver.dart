import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

class MyGallerySaver extends StatelessWidget {
  const MyGallerySaver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageURL =
        'https://images.unsplash.com/photo-1648737963059-59ec8e2d50c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMzQwMzl8MXwxfGFsbHwxfHx8fHx8Mnx8MTY1NDEwNDQ3MA&ixlib=rb-1.2.1&q=80&w=1080';
    final snackBar = SnackBar(
      content: const Text('Downloaded to Gallery!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Gallery Saver')),
      body: Center(
        child: Column(
          children: [
            Image.network(
              imageURL,
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () async {
                String url = imageURL;
                final tempDir = await getTemporaryDirectory();
                final path = '${tempDir.path}.jpg';
                await Dio().download(url, path);

                await GallerySaver.saveImage(path, toDcim: true);

                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Download'),
            ),
          ],
        ),
      ),
    );
  }
}
