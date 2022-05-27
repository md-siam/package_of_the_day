import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebviewFlutter extends StatefulWidget {
  const MyWebviewFlutter({Key? key}) : super(key: key);

  @override
  State<MyWebviewFlutter> createState() => _MyWebviewFlutterState();
}

class _MyWebviewFlutterState extends State<MyWebviewFlutter> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Webview Flutter')),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://amazon.com',
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
        onPageStarted: (url) {
          debugPrint('New website: $url');
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.import_export, size: 32),
        onPressed: () async {
          controller.runJavascript(
            "document.getElementsByTagName('header')[0].style.display='none'",
          );
          controller.runJavascript(
            "document.getElementsByTagName('footer')[0].style.display='none'",
          );
          // final url = await controller.currentUrl();
          // print('Previous Website: $url');

          // controller.loadUrl('https://youtube.com');
        },
      ),
    );
  }
}
