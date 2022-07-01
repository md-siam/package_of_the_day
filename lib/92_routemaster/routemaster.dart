import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'pages/pages.dart';

final routes = RouteMap(
  routes: {
    '/': (_) => const CupertinoTabPage(
          child: HomePage(),
          paths: ['feed', 'settings'],
        ),
    '/feed': (_) => const MaterialPage(child: FeedPage()),
    '/feed/profile/:id': (_) => const MaterialPage(child: ProfilePage()),
    '/settings': (_) => const MaterialPage(child: SettingsPage()),
  },
);

class MyRouteMaster extends StatelessWidget {
  const MyRouteMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Route Master',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routerDelegate: RoutemasterDelegate(routesBuilder: (_) => routes),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);

    return CupertinoTabScaffold(
      controller: tabState.controller,
      tabBuilder: tabState.tabBuilder,
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Feed',
            icon: Icon(CupertinoIcons.list_bullet),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(CupertinoIcons.settings),
          ),
        ],
      ),
    );
  }
}
