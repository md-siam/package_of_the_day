import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

class MyFlutterNativeTimezone extends StatefulWidget {
  const MyFlutterNativeTimezone({Key? key}) : super(key: key);

  @override
  State<MyFlutterNativeTimezone> createState() =>
      _MyFlutterNativeTimezoneState();
}

class _MyFlutterNativeTimezoneState extends State<MyFlutterNativeTimezone> {
  String _timezone = 'Unknown';
  List<String> _availableTimezones = <String>[];

  @override
  void initState() {
    super.initState();
    _initData();
  }

  Future<void> _initData() async {
    try {
      _timezone = await FlutterNativeTimezone.getLocalTimezone();
    } catch (e) {
      log('Could not get the local timezone');
    }
    try {
      _availableTimezones = await FlutterNativeTimezone.getAvailableTimezones();
      _availableTimezones.sort();
    } catch (e) {
      log('Could not get available timezones');
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Native Timezone')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              'Local timezone: $_timezone\n',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Available timezones:\n',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _availableTimezones.length,
                itemBuilder: (_, index) => Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Text(index.toString()),
                    title: Text(_availableTimezones[index]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
