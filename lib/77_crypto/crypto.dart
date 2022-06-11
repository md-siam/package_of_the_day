import 'dart:convert'; // for the `utf8.encode` method
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

class MyCrypto extends StatefulWidget {
  const MyCrypto({Key? key}) : super(key: key);

  @override
  State<MyCrypto> createState() => _MyCryptoState();
}

class _MyCryptoState extends State<MyCrypto> {
  final TextEditingController _textEditingController = TextEditingController();
  TextStyle textStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  String sha1Output = '';
  String sha224Output = '';
  String sha256Output = '';
  String sha384Output = '';
  String sha512Output = '';
  String sha512224Output = '';
  String sha512256Output = '';
  String md5Output = '';
  String hmacOutput = '';

  @override
  void initState() {
    /// This is the `event listeners` of the TextEditingControllers
    /// implemented using the [addListener] method
    ///
    _textEditingController.addListener(_sha1Converter);
    _textEditingController.addListener(_sha224Converter);
    _textEditingController.addListener(_sha256Converter);
    _textEditingController.addListener(_sha384Converter);
    _textEditingController.addListener(_sha512Converter);
    _textEditingController.addListener(_sha512224Converter);
    _textEditingController.addListener(_sha512256Converter);
    _textEditingController.addListener(_md5Converter);
    _textEditingController.addListener(_hmacConverter);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
    _textEditingController.removeListener(_sha1Converter);
    _textEditingController.removeListener(_sha224Converter);
    _textEditingController.removeListener(_sha256Converter);
    _textEditingController.removeListener(_sha384Converter);
    _textEditingController.removeListener(_sha512Converter);
    _textEditingController.removeListener(_sha512224Converter);
    _textEditingController.removeListener(_sha512256Converter);
    _textEditingController.removeListener(_md5Converter);
    _textEditingController.removeListener(_hmacConverter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crypto')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          controller: null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              TextFormField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Text',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.tag),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('SHA-1:', style: textStyle),
              Text('$sha1Output\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('SHA-224:', style: textStyle),
              Text('$sha224Output\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('SHA-256', style: textStyle),
              Text('$sha256Output\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('SHA-384:', style: textStyle),
              Text('$sha384Output\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('SHA-512:', style: textStyle),
              Text('$sha512Output\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('SHA-512/224:', style: textStyle),
              Text('$sha512224Output\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('SHA-512/256:', style: textStyle),
              Text('$sha512256Output\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('MD5: (Not Recommended)', style: textStyle),
              Text('$md5Output\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
              Text('HMAC: (Most Secured)', style: textStyle),
              Text('$hmacOutput\n'),
              const Divider(thickness: 1, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }

  _sha1Converter() {
    // FIRST ENCODE TO UTF8 FORMAT
    var bytes = utf8.encode(_textEditingController.text);

    // AFTER ENCODING TO UTF-8 FORMAT IT WILL CONVERT TO SHA FORMAT
    var digest = sha1.convert(bytes);

    setState(() {
      sha1Output = digest.toString();
    });
  }

  _sha224Converter() {
    var bytes = utf8.encode(_textEditingController.text);
    var digest = sha224.convert(bytes);

    setState(() {
      sha224Output = digest.toString();
    });
  }

  _sha256Converter() {
    var bytes = utf8.encode(_textEditingController.text);
    var digest = sha224.convert(bytes);

    setState(() {
      sha256Output = digest.toString();
    });
  }

  _sha384Converter() {
    var bytes = utf8.encode(_textEditingController.text);
    var digest = sha224.convert(bytes);

    setState(() {
      sha384Output = digest.toString();
    });
  }

  _sha512Converter() {
    var bytes = utf8.encode(_textEditingController.text);
    var digest = sha224.convert(bytes);

    setState(() {
      sha512Output = digest.toString();
    });
  }

  _sha512224Converter() {
    var bytes = utf8.encode(_textEditingController.text);
    var digest = sha512224.convert(bytes);

    setState(() {
      sha512224Output = digest.toString();
    });
  }

  _sha512256Converter() {
    var bytes = utf8.encode(_textEditingController.text);
    var digest = sha512256.convert(bytes);

    setState(() {
      sha512256Output = digest.toString();
    });
  }

  _md5Converter() {
    var bytes = utf8.encode(_textEditingController.text);
    var digest = md5.convert(bytes);

    setState(() {
      md5Output = digest.toString();
    });
  }

  _hmacConverter() {
    var key = utf8.encode('p@ssw0rd'); //secret key being used
    var bytes = utf8.encode(_textEditingController.text);
    var hmacSha256 = Hmac(sha256, key); // HMAC-SHA256
    var digest = hmacSha256.convert(bytes);

    setState(() {
      hmacOutput = digest.toString();
    });
  }
}
