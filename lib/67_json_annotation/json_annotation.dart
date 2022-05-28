import 'package:flutter/material.dart';

import 'model/address.dart';
import 'model/person_model.dart';

/// Copy the package name with dev_dependencies
/// `dependencies:`
///   `json_annotation: ^4.4.0`
///
/// `dev_dependencies:`
///    `build_runner: ^2.0.0`
///    `json_serializable: ^6.0.0``
///
/// For help, run this command in your terminal:
/// [$ flutter pub run build_runner --help]
///
/// You can find one simple example here:
/// [https://github.com/google/json_serializable.dart/tree/master/example]

class MyJSONAnnotation extends StatefulWidget {
  const MyJSONAnnotation({Key? key}) : super(key: key);

  @override
  State<MyJSONAnnotation> createState() => _MyJSONAnnotationState();
}

class _MyJSONAnnotationState extends State<MyJSONAnnotation> {
  // ignore: prefer_typing_uninitialized_variables
  var toJson;
  // ignore: prefer_typing_uninitialized_variables
  var fromJson;
  late PersonModel person;

  final TextStyle _textStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  @override
  void initState() {
    super.initState();
    person = PersonModel(
      name: 'Md Siam',
      creditCardNumber: '1234123412341234',
      birthday: DateTime.now(),
      address: Address(
        city: 'Dhaka',
        street: 'Dhaka',
        number: 1,
      ),
    );
  }

  _converter() {
    final json = person.toJson();
    toJson = json;
    debugPrint('toJSON: ${person.toJson()}');

    final newPerson = PersonModel.fromJson(json);
    fromJson = newPerson;
    debugPrint('fromJSON: $newPerson');
  }

  _resetValue() {
    toJson = null;
    fromJson = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JSON Annotation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 300,
              width: 350,
              color: Colors.purple[100],
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text(':::person.toJson():::\n', style: _textStyle),
                  Text('$toJson', textAlign: TextAlign.center),
                  const SizedBox(height: 30),
                  Text(':::PersonModel.fromJson(json):::\n', style: _textStyle),
                  Text('$fromJson', textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: const Text('EXECUTE CONVERSION'),
              onPressed: () => setState(() {
                _converter();
              }),
            ),
            const SizedBox(height: 5.0),
            ElevatedButton(
              child: const Text('RESET'),
              onPressed: () => setState(() {
                _resetValue();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
