import 'package:flutter/material.dart';

import 'package:lyric_reel/pages/home_page/posts_page.dart';
import 'package:lyric_reel/pages/home_page/search_bar_delegate.dart';
import 'package:lyric_reel/pages/messages_page/messages_home_page.dart';
import 'package:lyric_reel/pages/notifications_page/notifications_page,dart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lyric Reel',
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchBarDelegate()
              );
            },
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Profile"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Settings"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("Help"),
              ),
            ],
          ),
        ],
      ),
      body: _buildPage(currentPageIndex),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.messenger_sharp),
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications_sharp),
            icon: Icon(Icons.notifications_outlined),
            label: 'Notifications',
          ),
        ],
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return BottomNavigationHomePage();
      case 1:
        return MessagesHomePage();
      case 2:
      // Return a page with short videos
        return NotificationsPage();
      default:
        return Text('Something went wrong');
    }
  }
}