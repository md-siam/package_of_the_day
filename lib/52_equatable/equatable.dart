import 'package:flutter/material.dart';

import 'models/user_model.dart';

class MyEquatable extends StatelessWidget {
  const MyEquatable({Key? key}) : super(key: key);
  User createJames() => const User(
        name: 'James',
        urlImage:
            'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
      );

  User createSarah() => const User(
        name: 'Sarah',
        urlImage:
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',
      );

  @override
  Widget build(BuildContext context) {
    final james = createJames();
    final sarah = createSarah();
    final sarah2 = createSarah();
    TextStyle txStyle = const TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(title: const Text('Equatable')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 260,
              width: double.infinity,
              color: Colors.purple[100],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyCircle(name: james.name, url: james.urlImage),
                      MyCircle(name: sarah.name, url: sarah.urlImage),
                    ],
                  ),
                  const Text(
                    'Checking two User objects using `equatable` package:\n',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Text('james = sarah', style: txStyle),
                  Text('sarah = sarah', style: txStyle),
                  Text('sarah = sarah2', style: txStyle),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Results are: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  james == sarah
                      ? Text('james = sarah : TRUE', style: txStyle)
                      : Text('james = sarah : FALSE', style: txStyle),
                  sarah == sarah
                      ? Text('sarah = sarah : TRUE', style: txStyle)
                      : Text('sarah = sarah : FALSE', style: txStyle),
                  sarah == sarah2
                      ? Text('sarah = sarah2 : TRUE', style: txStyle)
                      : Text('sarah = sarah2 : FALSE', style: txStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCircle extends StatelessWidget {
  final String name;
  final String url;

  const MyCircle({
    Key? key,
    required this.name,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(url)),
            Text(name),
          ],
        ),
      );
}
