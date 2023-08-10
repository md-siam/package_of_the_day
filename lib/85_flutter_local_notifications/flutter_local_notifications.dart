import 'package:flutter/material.dart';

import 'api/notification_api.dart';
import 'second_page.dart';

/// This package requires extensive use of [AndroidManifest.xml] file
/// and [Info.plist] file. Checkout those files from `top-to-bottom`
///
class MyFlutterLocalNotifications extends StatefulWidget {
  const MyFlutterLocalNotifications({Key? key}) : super(key: key);

  @override
  State<MyFlutterLocalNotifications> createState() =>
      _MyFlutterLocalNotificationsState();
}

class _MyFlutterLocalNotificationsState
    extends State<MyFlutterLocalNotifications> {
  @override
  void initState() {
    super.initState();
    NotificationApi.init();
    listenNotifications();
  }

  void listenNotifications() =>
      NotificationApi.onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String? payload) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) => SecondPage(payload: payload)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade300,
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const Spacer(),
            const FlutterLogo(size: 150),
            const SizedBox(height: 24),
            const Text(
              'Flutter Local Notifications',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            buildButton(
              title: 'Simple Notification',
              icon: Icons.notifications,
              onClicked: () {
                NotificationApi.showNotification(
                  title: 'Md. Siam',
                  body: 'Hay there! Are you enjoying this repo?\n'
                      'If yes, then please give it a star.⭐',
                  payload: 'Give it a star.⭐',
                );
              },
            ),
            const SizedBox(height: 20),
            buildButton(
              title: 'Scheduled Notification',
              icon: Icons.notifications_active,
              onClicked: () {
                NotificationApi.showScheduledNotification(
                  title: 'Md. Siam',
                  body: 'Scheduled Notification',
                  payload: 'Give it a star.⭐',
                  scheduledDate: DateTime.now().add(const Duration(seconds: 4)),
                );

                const snackBar = SnackBar(
                  content: Text(
                    'Scheduled in 4 seconds!',
                    style: TextStyle(fontSize: 24),
                  ),
                  backgroundColor: Colors.green,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            const SizedBox(height: 20),
            buildButton(
              title: 'Remove Notification',
              icon: Icons.delete_forever,
              onClicked: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Have to implement!',
                      style: TextStyle(fontSize: 24),
                    ),
                    backgroundColor: Colors.red,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // buildButton method
  Widget buildButton({
    required String title,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          minimumSize: const Size.fromHeight(56),
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: onClicked,
        child: Row(
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 16),
            Text(title),
          ],
        ),
      );
}
