import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyCustomCliper extends StatelessWidget {
  const MyCustomCliper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Custom Cliper')),
      body: ListView(
        padding: const EdgeInsets.all(5.0),
        children: [
          ClipPath(
            clipper: WaveClipperOne(flip: true, reverse: true),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: const Center(
                  child: Text("WaveClipperTwo(flip: true,reverse: true)")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperOne(flip: true),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: const Center(child: Text("WaveClipperTwo(flip: true)")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperTwo(flip: true, reverse: true),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: const Center(
                  child: Text("WaveClipperTwo(flip: true,reverse:true)")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperTwo(flip: true),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: const Center(child: Text("WaveClipperTwo(flip: true)")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.blue,
              child: const Center(child: Text("OvalBottomBorderClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: ArcClipper(),
            child: Container(
              alignment: Alignment.topCenter,
              height: 100,
              color: Colors.pink,
              child: const Text("ArcClipper()"),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: OvalTopBorderClipper(),
            child: Container(
              height: 120,
              color: Colors.green,
              child: const Center(child: Text("OvalTopBorderClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: PointsClipper(),
            child: Container(
              height: 100,
              color: Colors.indigo,
              child: const Center(child: Text("PointsClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: MovieTicketClipper(),
            child: Container(
              height: 100,
              color: Colors.deepPurple,
              child: const Center(child: Text("MovieTicketClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: MultipleRoundedCurveClipper(),
            child: Container(
              height: 100,
              color: Colors.pink,
              child: const Center(child: Text("MultipleRoundedCurveClipper()")),
            ),
          ),
          const SizedBox(height: 20.0),
          ClipPath(
            clipper: MultiplePointedEdgeClipper(),
            child: Container(
              height: 100,
              color: Colors.green,
              child: const Center(child: Text("MultiplePointedEdgeClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Container(
              height: 120,
              color: Colors.red,
              child: const Center(child: Text("DiagonalPathClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: DiagonalPathClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.pink,
              child: const Center(child: Text("DiagonalPathClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 120,
              color: Colors.deepPurple,
              child: const Center(child: Text("WaveClipperOne()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 120,
              color: Colors.deepPurple,
              child: const Center(child: Text("WaveClipperOne(reverse: true)")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: const Center(child: Text("WaveClipperTwo()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperTwo(reverse: true),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: const Center(child: Text("WaveClipperTwo(reverse: true)")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: 320,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.orange,
              ),
              child: const Center(child: Text("RoundedDiagonalPathClipper()")),
            ),
          ),
        ],
      ),
    );
  }
}
