import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesListPage extends StatefulWidget {
  const NotesListPage({Key? key}) : super(key: key);

  @override
  State<NotesListPage> createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  String? noteValue;

  @override
  void initState() {
    super.initState();
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Notes')),
      body: Center(
        child: noteValue == null
            ? const Text(
                'No Notes Available',
                style: TextStyle(fontSize: 30),
              )
            : Text(
                noteValue!,
                style: const TextStyle(fontSize: 30),
              ),
      ),
    );
  }

  void getNotes() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    noteValue = prefs.getString('noteData');
    setState(() {});
  }
}
