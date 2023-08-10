import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import 'utils.dart';

class MyOverlaySupport extends StatelessWidget {
  const MyOverlaySupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: 'Overlay Support',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const OverlaySupportHomePage(),
      ),
    );
  }
}

class OverlaySupportHomePage extends StatelessWidget {
  const OverlaySupportHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Overlay Support')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Utils.showTopSnackBar(
                    context,
                    'Green Overlay Notification',
                    Colors.green,
                  );
                },
                child: const Text('Green Overlay Notification')),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Utils.showTopSnackBar(
                  context,
                  'Red Overlay Notification',
                  Colors.red,
                );
              },
              child: const Text('Red Overlay Notification'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              onPressed: () {
                Utils.showTopSnackBar(
                  context,
                  'Teal Overlay Notification',
                  Colors.teal,
                );
              },
              child: const Text('Teal Overlay Notification'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
              onPressed: () {
                Utils.showTopSnackBar(
                  context,
                  'Pink Overlay Notification',
                  Colors.pinkAccent,
                );
              },
              child: const Text('Pink Overlay Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
