import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MyFaker extends StatefulWidget {
  const MyFaker({Key? key}) : super(key: key);

  @override
  State<MyFaker> createState() => _MyFakerState();
}

class _MyFakerState extends State<MyFaker> {
  String? firstName;
  String? lastName;
  String? jobTitle;
  String? companyName;
  String? address;
  String? currencyCode;
  DateTime? date;

  final TextStyle _textStyle = const TextStyle(fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Faker')),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 250,
              width: double.infinity,
              color: Colors.deepPurple[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Random:\n',
                    style: _textStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Name: $firstName $lastName', style: _textStyle),
                  const SizedBox(height: 10.0),
                  Text('Job title: $jobTitle', style: _textStyle),
                  const SizedBox(height: 10.0),
                  Text('Company name: $companyName', style: _textStyle),
                  const SizedBox(height: 10.0),
                  Text('Address: $address', style: _textStyle),
                  const SizedBox(height: 10.0),
                  Text('Currency Code: $currencyCode', style: _textStyle),
                  const SizedBox(height: 10.0),
                  Text('Date & Time: $date', style: _textStyle),
                ],
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  firstName = faker.person.firstName();
                  lastName = faker.person.lastName();
                  jobTitle = faker.job.title();
                  companyName = faker.company.name();
                  address = faker.address.country();
                  currencyCode = faker.currency.code();
                  date = faker.date.dateTime(minYear: 2000, maxYear: 2022);
                });
              },
              child: Text(
                'Generate Random Values',
                style: _textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
