import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyRflutterAlert extends StatelessWidget {
  const MyRflutterAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rflutter Alert')),
      body: const PopupDialog(),
    );
  }
}

class PopupDialog extends StatelessWidget {
  const PopupDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Basic Alert'),
            onPressed: () => _onBasicAlertPressed(context),
          ),
          ElevatedButton(
            child: const Text('Alert with Button'),
            onPressed: () => _onAlertButtonPressed(context),
          ),
          ElevatedButton(
            child: const Text('Alert with Buttons'),
            onPressed: () => _onAlertButtonsPressed(context),
          ),
          ElevatedButton(
            child: const Text('Alert with Style'),
            onPressed: () => _onAlertWithStylePressed(context),
          ),
          ElevatedButton(
            child: const Text('Alert with Custom Image'),
            onPressed: () => _onAlertWithCustomImagePressed(context),
          ),
          ElevatedButton(
            child: const Text('Alert with Custom Content'),
            onPressed: () => _onAlertWithCustomContentPressed(context),
          ),
        ],
      ),
    );
  }

  // The easiest way for creating RFlutter Alert
  _onBasicAlertPressed(context) {
    Alert(
            context: context,
            title: "RFLUTTER ALERT",
            desc: "Flutter is more awesome with RFlutter Alert.")
        .show();
  }

// Alert with single button.
  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.error,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          width: 120,
          child: const Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    ).show();
  }

// Alert with multiple and custom buttons
  _onAlertButtonsPressed(context) {
    Alert(
      context: context,
      type: AlertType.warning,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: const Color.fromRGBO(0, 179, 134, 1.0),
          child: const Text(
            "FLAT",
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        ),
        DialogButton(
          onPressed: () => Navigator.pop(context),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(116, 116, 191, 1.0),
              Color.fromRGBO(52, 138, 199, 1.0),
            ],
          ),
          child: const Text(
            "GRADIENT",
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        )
      ],
    ).show();
  }

// Advanced using of alerts
  _onAlertWithStylePressed(context) {
    // Reusable alert style
    var alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: const TextStyle(fontWeight: FontWeight.bold),
      animationDuration: const Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: const BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: const TextStyle(
        color: Colors.red,
      ),
    );

    // Alert dialog using custom alert style
    Alert(
      context: context,
      style: alertStyle,
      type: AlertType.info,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: const Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(0.0),
          child: const Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ).show();
  }

// Alert custom images
  _onAlertWithCustomImagePressed(context) {
    Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      image: Image.asset("assets/images/rflutter_alert/success.png"),
    ).show();
  }

// Alert custom content
  _onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        title: "LOGIN",
        content: const Column(
          children: [
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Username',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Password',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "LOGIN",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }
}
