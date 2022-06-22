import 'package:flutter/material.dart';

class MyFlutterLocalNotifications extends StatelessWidget {
  const MyFlutterLocalNotifications({Key? key}) : super(key: key);

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
              onClicked: () {},
            ),
            const SizedBox(height: 20),
            buildButton(
              title: 'Scheduled Notification',
              icon: Icons.notifications_active,
              onClicked: () {},
            ),
            const SizedBox(height: 20),
            buildButton(
              title: 'Remove Notification',
              icon: Icons.delete_forever,
              onClicked: () {},
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
          minimumSize: const Size.fromHeight(56),
          primary: Colors.white,
          onPrimary: Colors.black,
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
