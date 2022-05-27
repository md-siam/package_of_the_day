import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUrlLauncher extends StatefulWidget {
  const MyUrlLauncher({Key? key}) : super(key: key);

  @override
  State<MyUrlLauncher> createState() => _MyUrlLauncherState();
}

class _MyUrlLauncherState extends State<MyUrlLauncher> {
  final Uri _url = Uri.parse('https://youtube.com');
  //final Uri _phoneNumber = Uri(scheme: 'tel', path: '+8801755997775');
  final Uri _phoneNumber = Uri(scheme: 'sms', path: '+8801755997775');

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
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                } else {
                  debugPrint("Can't launch the URL");
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
                if (await canLaunchUrl(_phoneNumber)) {
                  await launchUrl(_phoneNumber);
                } else {
                  debugPrint("Can't call/sms the number");
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
