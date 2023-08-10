import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // perform http request
import 'dart:convert'; // convert response string to JSON (map)

class MyHTTP extends StatefulWidget {
  const MyHTTP({Key? key}) : super(key: key);

  @override
  State<MyHTTP> createState() => _MyHTTPState();
}

class _MyHTTPState extends State<MyHTTP> {
  String data = "";
  String title = "";
  final url = Uri.parse('https://jsonplaceholder.typicode.com/albums/1');
  bool isLoading = false;

  performHTTPRequest() async {
    String output = "";

    try {
      final response = await http.get(url);
      debugPrint('Status code: ${response.statusCode}');
      //http://192.168.0.27:5500/messages.json
      if (response.statusCode == 200) {
        output = response.body;
        var json = jsonDecode(output);
        setState(() {
          data = output;
          title = json['title'];
          isLoading = false;
        });
        debugPrint('Body: ${response.body}');
      } else {
        throw Exception('Failed to load data');
      }
      return output;
    } catch (e) {
      // ignore: avoid_print
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HTTP Request')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '::: HTTP Response :::\n',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            !isLoading
                ? Text(
                    data,
                    style: const TextStyle(fontSize: 16, color: Colors.teal),
                  )
                : const SizedBox(child: CircularProgressIndicator()),
            const SizedBox(height: 60),
            Text(
              '\n::: The JSON title attribute :::\n',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            !isLoading
                ? Text(
                    title,
                    style: const TextStyle(fontSize: 16, color: Colors.red),
                  )
                : const SizedBox(child: CircularProgressIndicator()),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () async {
                setState(() => isLoading = true);
                performHTTPRequest();

                /// if `performHTTPRequest()` is not responding
                ///
                await Future.delayed(const Duration(seconds: 3));
                setState(() => isLoading = false);
              },
              child: const Text('GET DATA FROM HTTP REQUEST'),
            ),
            ElevatedButton(
              child: const Text('RESET'),
              onPressed: () {
                setState(() {
                  data = "";
                  title = "";
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
