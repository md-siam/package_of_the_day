import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class MyFilePicker extends StatefulWidget {
  const MyFilePicker({Key? key}) : super(key: key);

  @override
  State<MyFilePicker> createState() => _MyFilePickerState();
}

class _MyFilePickerState extends State<MyFilePicker> {
  String? fileName;
  double? fileSize;
  String? fileExtension;

  TextStyle textStyle = const TextStyle(fontSize: 20);
  TextStyle buttonTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('File Picker')),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.deepPurple[200],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Name: $fileName', style: textStyle),
                    Text('Size: $fileSize KB', style: textStyle),
                    Text('Extension: .$fileExtension', style: textStyle),
                  ]),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Pick File', style: buttonTextStyle),
              ),
              onPressed: () async {
                final result = await FilePicker.platform.pickFiles();
                if (result == null) return; // if no file selected

                /// `Open` single file
                final file = result.files.first;
                openFile(file);

                double calculatedSize = double.parse(
                  (file.size / 1024).toStringAsFixed(2),
                );

                setState(() {
                  fileName = file.name;
                  fileSize = calculatedSize;
                  fileExtension = '${file.extension}';
                });

                debugPrint('Name: ${file.name}');
                debugPrint('Bytes: ${file.bytes}');
                debugPrint('Size: $calculatedSize KB');
                debugPrint('Extension: ${file.extension}');
                debugPrint('Path: ${file.path}');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  fileName = null;
                  fileSize = null;
                  fileExtension = null;
                });
              },
              child: Text('Reset', style: buttonTextStyle),
            ),
          ],
        ),
      ),
    );
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
