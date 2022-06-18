import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'home_page.dart';

class MyPinCodeFields extends StatefulWidget {
  const MyPinCodeFields({Key? key}) : super(key: key);

  @override
  State<MyPinCodeFields> createState() => _MyPinCodeFieldsState();
}

class _MyPinCodeFieldsState extends State<MyPinCodeFields> {
  final String requiredNumber = '123456';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pin Code Fields')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter pin number',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30.0),
              PinCodeTextField(
                appContext: context,
                length: 6,
                onChanged: (value) {
                  debugPrint(value);
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5.0),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.deepPurple,
                  selectedColor: Colors.brown,
                ),
                onCompleted: (value) {
                  if (value == requiredNumber) {
                    log('valid pin');
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                        (Route<dynamic> route) => false);
                  } else {
                    log('invalid pin');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
