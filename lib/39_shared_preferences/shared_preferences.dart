import 'package:flutter/material.dart';
import 'package:package_of_the_day/39_shared_preferences/notelist_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences extends StatefulWidget {
  const MySharedPreferences({Key? key}) : super(key: key);

  @override
  State<MySharedPreferences> createState() => _MySharedPreferencesState();
}

class _MySharedPreferencesState extends State<MySharedPreferences> {
  final notesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shared Preferences')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: notesController,
              decoration: const InputDecoration(hintText: 'Enter Notes'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Save'),
              onPressed: () {
                setNotesData(notesController.text);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('View Notes'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotesListPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> setNotesData(noteValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('noteData', noteValue);
  }
}
