import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:web_scraper/web_scraper.dart';

class MyWebScraper extends StatefulWidget {
  const MyWebScraper({Key? key}) : super(key: key);

  @override
  State<MyWebScraper> createState() => _MyWebScraperState();
}

class _MyWebScraperState extends State<MyWebScraper> {
  late WebScraper webScraper;
  bool loaded = false;
  String? date;
  String? stockDesc;
  var list = [];
  int? rowNumbers;
  TextStyle headerText = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  /// this `getData()` method will scrap the Dhaka Stock Exchange website
  /// for [Trading Code, LTP*, & Change] of specific stock
  ///
  void getData() async {
    webScraper = WebScraper('https://www.dsebd.org');
    List<Map<String, dynamic>> dateTime;
    List<Map<String, dynamic>> stockDetail;
    List<Map<String, dynamic>> lengthTable;
    final response = await http.get(
      Uri.parse('https://www.dsebd.org/latest_share_price_scroll_l.php'),
    );
    debugPrint('statusCode: ${response.statusCode}');

    if (response.statusCode == 200) {
      try {
        if (await webScraper.loadWebPage('/latest_share_price_scroll_l.php')) {
          dateTime = webScraper.getElement(
              'html>body>div.containbox>section.content>div.gray>div.RightColmInner>div.row>div.col-xs-18>h2.topBodyHead',
              ['title']);
          stockDetail = webScraper.getElement(
              'html>body>div.containbox>section.content>div.gray>div.RightColmInner>div.row>div.full-width-mobile>div.inner-scroll>table.fixedHeader',
              ['title']);
          lengthTable = webScraper.getElement(
              'html>body>div.containbox>section.content>div.gray>div.RightColmInner>div.row>div.full-width-mobile>div.inner-scroll>table.fixedHeader>tbody',
              ['title']);
          setState(
            () {
              loaded = true;
              date = dateTime[0]['title'];
              stockDesc = stockDetail[0]['title'];
              list = stockDesc!.split("\n");
              rowNumbers = lengthTable.length - 1;
            },
          );
        } else {
          debugPrint("Error fetching data from dsebd.org");
        }
      } on WebScraperException catch (err) {
        debugPrint("Network error is: $err");
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(title: const Text('Web Scraper')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.deepPurple[500],
              height: 30,
              child: Center(
                child: (loaded)
                    ? Text(
                        date!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : const LinearProgressIndicator(),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: (loaded)
                    ? Column(
                        children: [
                          Table(
                            border: TableBorder.symmetric(
                              inside: const BorderSide(
                                width: 0.5,
                                color: Colors.purple,
                              ),
                            ),
                            children: [
                              TableRow(
                                children: [
                                  Text(
                                    list[4].trim(),
                                    textAlign: TextAlign.center,
                                    style: headerText,
                                  ),
                                  Text(
                                    list[5].trim(),
                                    textAlign: TextAlign.center,
                                    style: headerText,
                                  ),
                                  Text(
                                    list[10].trim(),
                                    textAlign: TextAlign.center,
                                    style: headerText,
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text(list[21].trim(),
                                      textAlign: TextAlign.center),
                                  Text(list[23].trim(),
                                      textAlign: TextAlign.center),
                                  Text(list[28].trim(),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                              for (int i = 0, j = 18, x = 21, y = 23, z = 28;
                                  i < 384;
                                  i++)
                                TableRow(
                                  children: [
                                    Text(list[x = x + j].trim(),
                                        textAlign: TextAlign.center),
                                    Text(list[y = y + j].trim(),
                                        textAlign: TextAlign.center),
                                    Text(list[z = z + j].trim(),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      )
                    : const LinearProgressIndicator(color: Colors.transparent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
