import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

import 'user_data.dart';

class MyAnimSearchBar extends StatefulWidget {
  const MyAnimSearchBar({Key? key}) : super(key: key);

  @override
  State<MyAnimSearchBar> createState() => _MyAnimSearchBarState();
}

class _MyAnimSearchBarState extends State<MyAnimSearchBar> {
  String? filter;
  final TextEditingController _searchController = TextEditingController();
  TextStyle nameTextStyle = const TextStyle(
    fontSize: 18.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  TextStyle locationTextStyle = const TextStyle(
    fontSize: 15.0,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        filter = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anim Search Bar'),
        actions: [
          AnimSearchBar(
            width: MediaQuery.of(context).size.width - 10,
            textController: _searchController,
            //style: const TextStyle(color: Colors.white),
            onSuffixTap: () {
              setState(() {
                _searchController.clear();
              });
            },
            color: Colors.deepPurple[200],
            helpText: 'Search Text..',
            closeSearchOnSuffixTap: true,
            rtl: true,
            onSubmitted: (String _) {
              debugPrint('object');
            },
          ),
          const SizedBox(width: 5)
        ],
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          if (filter == null || filter == "") {
            return bodyList(index);
          } else if (userList[index]
                  .name
                  .toLowerCase()
                  .contains(filter!.toLowerCase()) ||
              userList[index]
                  .location
                  .toLowerCase()
                  .contains(filter!.toLowerCase())) {
            return bodyList(index);
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget bodyList(int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          elevation: 4.0,
          child: InkWell(
            splashColor: Colors.deepPurple[100],
            onTap: () {
              setState(() {
                userList[index].isLiked = !userList[index].isLiked;
              });
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(userList[index].imageURL),
              ),
              title: Text(
                userList[index].name,
                style: nameTextStyle,
              ),
              subtitle: Text(
                userList[index].location,
                style: locationTextStyle,
              ),
              trailing: userList[index].isLiked
                  ? const Icon(Icons.favorite, color: Colors.deepOrange)
                  : const Icon(Icons.favorite_border, color: Colors.grey),
            ),
          ),
        ),
      );
}
