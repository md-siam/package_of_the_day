import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyFlutterToast extends StatelessWidget {
  const MyFlutterToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: const Text('Flutter Toast'),
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showToast(),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('Show Toast'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => cancelToast(),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('Cancel Toast'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: 'This is Long Toast..!!!',
      fontSize: 18,
      gravity: ToastGravity.CENTER_LEFT,
      textColor: Colors.black,
      backgroundColor: Colors.white54,
    );
  }

  void cancelToast() {
    Fluttertoast.cancel();
  }
}
