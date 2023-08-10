import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class MyBottomNavyBar extends StatefulWidget {
  const MyBottomNavyBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavyBar> createState() => _MyBottomNavyBarState();
}

class _MyBottomNavyBarState extends State<MyBottomNavyBar> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: const Text('Bottom Navy Bar'),
        backgroundColor: Colors.black12,
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 140,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.apps,
                    size: 140,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble,
                    size: 140,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Message',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    size: 140,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        backgroundColor: Colors.black12,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: const Text('Home'),
            icon: const Icon(Icons.home),
            activeColor: Colors.deepOrangeAccent,
          ),
          BottomNavyBarItem(
            title: const Text('Explore'),
            icon: const Icon(Icons.apps),
            activeColor: Colors.deepOrangeAccent,
          ),
          BottomNavyBarItem(
            title: const Text('Message'),
            icon: const Icon(Icons.chat_bubble),
            activeColor: Colors.deepOrangeAccent,
          ),
          BottomNavyBarItem(
            title: const Text('Settings'),
            icon: const Icon(Icons.settings),
            activeColor: Colors.deepOrangeAccent,
          ),
        ],
      ),
    );
  }
}
