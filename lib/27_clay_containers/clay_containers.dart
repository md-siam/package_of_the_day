import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';

class MyClayContainers extends StatelessWidget {
  const MyClayContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var baseColor = Colors.deepPurple[100];

    return Scaffold(
      backgroundColor: baseColor,
      appBar: AppBar(title: const Text('Clay Containers')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClayContainer(
                color: baseColor,
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 30),
              ClayContainer(
                color: baseColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClayText(
                    "Hi!",
                    emboss: true,
                    size: 46,
                    textColor: Colors.deepPurple,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ClayContainer(
                color: baseColor,
                height: 100,
                width: 100,
                borderRadius: 50,
              ),
              const SizedBox(height: 30),
              ClayContainer(
                color: baseColor,
                height: 100,
                width: 100,
                customBorderRadius: const BorderRadius.only(
                    topRight: Radius.elliptical(150, 150),
                    bottomLeft: Radius.circular(50)),
              ),
              const SizedBox(height: 30),
              ClayContainer(
                emboss: true,
                color: baseColor,
                height: 100,
                width: 100,
                borderRadius: 50,
              ),
              const SizedBox(height: 30),
              ClayContainer(
                color: baseColor,
                height: 100,
                width: 100,
                borderRadius: 75,
                depth: 40,
                spread: 40,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClayContainer(
                    color: baseColor,
                    height: 80,
                    width: 80,
                    borderRadius: 75,
                    curveType: CurveType.concave,
                  ),
                  const SizedBox(width: 30),
                  ClayContainer(
                    color: baseColor,
                    height: 80,
                    width: 80,
                    borderRadius: 75,
                    curveType: CurveType.none,
                  ),
                  const SizedBox(width: 30),
                  ClayContainer(
                    color: baseColor,
                    height: 80,
                    width: 80,
                    borderRadius: 75,
                    curveType: CurveType.convex,
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
