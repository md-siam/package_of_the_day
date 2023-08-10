import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker({Key? key}) : super(key: key);

  @override
  State<MyImagePicker> createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade300,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image != null
                  ? Image.file(
                      image!,
                      width: 160,
                      height: 160,
                      fit: BoxFit.cover,
                    )
                  : const FlutterLogo(size: 160),
              const SizedBox(height: 40),
              const Text(
                'Image Picker',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 48),
              buildButton(
                title: 'Pick Gallery',
                icon: Icons.image_outlined,
                onClicked: () {
                  pickImage(ImageSource.gallery);
                },
              ),
              const SizedBox(height: 24),
              buildButton(
                title: 'Pick Camera',
                icon: Icons.camera_alt_outlined,
                onClicked: () {
                  pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // buildButton method
  Widget buildButton({
    required String title,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          minimumSize: const Size.fromHeight(56),
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: onClicked,
        child: Row(
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 16),
            Text(title),
          ],
        ),
      );
}
