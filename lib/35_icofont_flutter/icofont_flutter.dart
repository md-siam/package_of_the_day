import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class MyIcofontFlutter extends StatelessWidget {
  const MyIcofontFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Icofont Flutter')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  IcoFontIcons.cab,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.bus,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.car,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.cycling,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  IcoFontIcons.radio,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.pen,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.bubbleDown,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.calendar,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  IcoFontIcons.signIn,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.signOut,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.login,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.logout,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  IcoFontIcons.cloudDownload,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.delete,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.cut,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  IcoFontIcons.pestle,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
