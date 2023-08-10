import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MyDio extends StatefulWidget {
  const MyDio({Key? key}) : super(key: key);

  @override
  State<MyDio> createState() => _MyDioState();
}

class _MyDioState extends State<MyDio> {
  String? data;
  int? userId;
  String? title;
  bool isLoading = false;
  final url = 'https://jsonplaceholder.typicode.com/albums/1';

  void getHttp() async {
    try {
      var response = await Dio().get(url);
      debugPrint('Status code: ${response.statusCode}');
      if (response.statusCode == 200) {
        data = response.toString();
        var json = jsonDecode(response.toString());
        debugPrint('JSONDecode output: $json');
        setState(() {
          userId = json['userId'];
          title = json['title'];
          isLoading = false;
        });
        debugPrint('Response: $response');
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      // ignore: avoid_print
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dio')),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.grey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    '::: HTTP Response :::\n',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  !isLoading
                      ? Text(
                          '$data',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : const CircularProgressIndicator(
                          color: Colors.white,
                        ),
                  const SizedBox(height: 20),
                  Text(
                    '\n::: JSON userId & title attribute :::\n',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  !isLoading
                      ? Text(
                          'UserID: $userId\nTitle: $title',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : const CircularProgressIndicator(
                          color: Colors.white,
                        ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                setState(() => isLoading = true);
                getHttp();

                /// if `getHttp()` is not responding
                ///
                await Future.delayed(const Duration(seconds: 3));
                setState(() => isLoading = false);
              },
              child: const Text('HTTP Call'),
            ),
            ElevatedButton(
              child: const Text('RESET'),
              onPressed: () {
                setState(() {
                  data = null;
                  userId = null;
                  title = null;
                  //data = "";
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
