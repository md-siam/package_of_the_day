// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'model/character_model.dart';

class MyInfiniteScrollPagination extends StatefulWidget {
  const MyInfiniteScrollPagination({Key? key}) : super(key: key);

  @override
  State<MyInfiniteScrollPagination> createState() =>
      _MyInfiniteScrollPaginationState();
}

class _MyInfiniteScrollPaginationState
    extends State<MyInfiniteScrollPagination> {
  int offset = 0;
  int limit = 5;

  final PagingController<int, dynamic> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((offset) {
      fetchNewPage();
    });
    super.initState();
  }

  getDataFromApi() async {
    log("Getting Data:");
    var url = Uri.parse(
      "https://www.breakingbadapi.com/api/characters?limit=$limit&offset=$offset",
    );

    var response = await http.get(url);
    if (response.statusCode == 200) {
      // return a decoded body
      List<CharacterModel> characterDetail =
          (json.decode(response.body) as List)
              .map((data) => CharacterModel.fromJson(data))
              .toList();
      print('Offset: $offset');
      print('Name[0]: ${characterDetail[0].name}');
      return characterDetail;
      //
    } else {
      return Future.error("Server Error !");
    }
  }

  Future<void> fetchNewPage() async {
    try {
      final List characterDetail = await getDataFromApi();
      //print('Name: ${characterDetail[1].name}');
      // to append data, as more data is still available and can be loaded
      _pagingController.appendPage(characterDetail, offset++);
      //_pagingController.appendLastPage(characterDetail);
    } catch (e) {
      _pagingController.error = e;
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Infinite Scroll Pagination')),
      body: PagedListView<int, dynamic>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<dynamic>(
          itemBuilder: (context, singleCharacterDetail, index) {
            return Column(
              children: [
                card(singleCharacterDetail),
                if (index == _pagingController.itemList!.length - 1)
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text("No More Data"),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget card(CharacterModel singleCharacterDetail) {
  return Container(
    width: double.maxFinite,
    margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      border: Border.all(color: Colors.black, width: 1.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.network(
            singleCharacterDetail.pictureUrl,
            width: 64,
          ),
        ),
        const SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 230,
              child: Text(
                '${singleCharacterDetail.id}. ${singleCharacterDetail.name}',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                softWrap: true,
                //overflow: TextOverflow.fade,
              ),
            ),
            Text(
              'Birthday: ${singleCharacterDetail.birthday}',
              style: const TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
            Text(
              'Status: ${singleCharacterDetail.status}',
              style: const TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          ],
        ),
      ],
    ),
  );
}
