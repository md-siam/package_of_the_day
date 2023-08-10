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
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitRotatingCircle(color: Colors.redAccent),
                SpinKitSpinningCircle(color: Colors.brown),
                SpinKitHourGlass(color: Colors.black),
                SpinKitChasingDots(color: Colors.cyanAccent),
              ],
            ),
          ),
          Divider(thickness: 5),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitRotatingPlain(color: Colors.yellow),
                SpinKitCubeGrid(color: Colors.teal),
                SpinKitWave(color: Colors.pink),
              ],
            ),
          ),
          Divider(thickness: 5),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitFadingCube(color: Colors.purple),
                SpinKitFoldingCube(color: Colors.blue),
                SpinKitFadingGrid(color: Colors.yellowAccent),
              ],
            ),
          ),
          Divider(thickness: 5),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitDoubleBounce(color: Colors.pink),
                SpinKitPulse(color: Colors.tealAccent),
                SpinKitRipple(color: Colors.deepPurple),
              ],
            ),
          ),
          Divider(thickness: 5),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitWanderingCubes(color: Colors.cyanAccent),
                SpinKitFadingFour(color: Colors.red),
                SpinKitThreeBounce(color: Colors.white),
              ],
            ),
          ),
          Divider(thickness: 5),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitCircle(color: Colors.brown),
                SpinKitSpinningLines(color: Colors.red),
                SpinKitRing(color: Colors.cyanAccent),
                SpinKitDualRing(color: Colors.yellow),
              ],
            ),
          ),
          Divider(thickness: 5),
        ],
      ),
    );
  }
}
