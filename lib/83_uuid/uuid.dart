import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class MyUUID extends StatefulWidget {
  const MyUUID({Key? key}) : super(key: key);

  @override
  State<MyUUID> createState() => _MyUUIDState();
}

class _MyUUIDState extends State<MyUUID> {
  String id = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('UUID:')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: const Text(
                    'UUID:',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    id,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              child: const Text(
                'Generate IDs',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  const uuid = Uuid();
                  // id = uuid.v1(); // time-based id
                  id = uuid.v4(); // random id

                  /// `name-based` id
                  //id = uuid.v5(Uuid.NAMESPACE_URL, 'www.flutter.dev');
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
