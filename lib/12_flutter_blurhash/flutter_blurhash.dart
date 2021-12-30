import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBlurhash extends StatelessWidget {
  const MyBlurhash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Blurhasg'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Goto  to the URL-> https://blurha.sh/ to collect the BlurHash string of a selected picture',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 50),
            const FaIcon(
              FontAwesomeIcons.arrowDown,
              color: Colors.black,
              size: 30,
            ),
            const SizedBox(height: 50),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const SizedBox(
                height: 300,
                width: 300,
                child: BlurHash(
                  hash: 'LB9amjso4Txuq@t8yYMxD4IUysx]',
                  imageFit: BoxFit.cover,
                  duration: Duration(seconds: 5),
                  image:
                      "https://images.theconversation.com/files/350865/original/file-20200803-24-50u91u.jpg?ixlib=rb-1.1.0&rect=37%2C29%2C4955%2C3293&q=45&auto=format&w=926&fit=clip",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
