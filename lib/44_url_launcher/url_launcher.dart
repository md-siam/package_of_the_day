import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUrlLauncher extends StatelessWidget {
  const MyUrlLauncher({Key? key}) : super(key: key);

  final String _url = 'https://youtube.com';
  final String _phoneNumber = '+8801755997775';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Url Launcher')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // for opening an url
            MaterialButton(
              onPressed: () async {
                if (await canLaunch(_url)) {
                  await launch(_url);
                } else {
                  print("Can't launch the URL");
                }
              },
              color: Colors.deepPurple,
              child: const Text(
                'Open Url',
                style: TextStyle(color: Colors.white),
              ),
            ),
            // for calling & sending text message
            MaterialButton(
              onPressed: () async {
                final _call = 'tel:$_phoneNumber';
                final _text = 'sms:$_phoneNumber';

                if (await canLaunch(_text)) {
                  await launch(_text);
                } else {
                  print("Can't call/sms the number");
                }
              },
              color: Colors.deepPurple,
              child: const Text(
                'Call / SMS',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
