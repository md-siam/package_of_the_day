import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MySpinkit extends StatefulWidget {
  const MySpinkit({Key? key}) : super(key: key);

  @override
  State<MySpinkit> createState() => _MySpinkitState();
}

class _MySpinkitState extends State<MySpinkit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Flutter Spinkit')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SpinKitRotatingCircle(color: Colors.redAccent),
                SpinKitSpinningCircle(color: Colors.brown),
                SpinKitHourGlass(color: Colors.black),
                SpinKitChasingDots(color: Colors.cyanAccent),
              ],
            ),
          ),
          const Divider(thickness: 5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SpinKitRotatingPlain(color: Colors.yellow),
                SpinKitCubeGrid(color: Colors.teal),
                SpinKitWave(color: Colors.pink),
              ],
            ),
          ),
          const Divider(thickness: 5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SpinKitFadingCube(color: Colors.purple),
                SpinKitFoldingCube(color: Colors.blue),
                SpinKitFadingGrid(color: Colors.yellowAccent),
              ],
            ),
          ),
          const Divider(thickness: 5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SpinKitDoubleBounce(color: Colors.pink),
                SpinKitPulse(color: Colors.tealAccent),
                SpinKitRipple(color: Colors.deepPurple),
              ],
            ),
          ),
          const Divider(thickness: 5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SpinKitWanderingCubes(color: Colors.cyanAccent),
                SpinKitFadingFour(color: Colors.red),
                SpinKitThreeBounce(color: Colors.white),
              ],
            ),
          ),
          const Divider(thickness: 5),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SpinKitCircle(color: Colors.brown),
                SpinKitSpinningLines(color: Colors.red),
                SpinKitRing(color: Colors.cyanAccent),
                SpinKitDualRing(color: Colors.yellow),
              ],
            ),
          ),
          const Divider(thickness: 5),
        ],
      ),
    );
  }
}
