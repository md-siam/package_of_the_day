import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class MyPathProvider extends StatefulWidget {
  const MyPathProvider({Key? key}) : super(key: key);

  @override
  State<MyPathProvider> createState() => _MyPathProviderState();
}

class _MyPathProviderState extends State<MyPathProvider> {
  TextStyle textStyle = const TextStyle(fontSize: 20);
  String? tempPath;
  String? permanentPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Provider'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                tempPath = null;
                permanentPath = null;
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Temp Path: $tempPath',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  TextButton.icon(
                    icon: const Icon(Icons.account_tree_outlined),
                    label: Text('Temp Path', style: textStyle),
                    onPressed: () async {
                      Directory tempDir = await getTemporaryDirectory();
                      setState(() {
                        tempPath = tempDir.path;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Permanent Path: $permanentPath',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  TextButton.icon(
                    icon: const Icon(Icons.account_tree_sharp),
                    label: Text('Permanent Path', style: textStyle),
                    onPressed: () async {
                      Directory permDir =
                          await getApplicationDocumentsDirectory();
                      setState(() {
                        permanentPath = permDir.path;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
