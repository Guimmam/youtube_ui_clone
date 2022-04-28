import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/screens/Explore_screen.dart';
import 'package:youtube_ui_clone/screens/home_screen.dart';
import 'package:youtube_ui_clone/screens/library_screen.dart';
import 'package:youtube_ui_clone/screens/subscriptions_screen.dart';

class AppbarNavbar extends StatefulWidget {
  const AppbarNavbar({Key? key}) : super(key: key);

  @override
  State<AppbarNavbar> createState() => _AppbarNavbarState();
}

class _AppbarNavbarState extends State<AppbarNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screens = <Widget>[
    const HomeScreen(),
    const ExploreScreen(),
    const SubscriptionsScreen(),
    const LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'assets/yt_logo_dark.png',
          ),
        ),
        leadingWidth: 120,
        actionsIconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.cast_sharp),
                Icon(Icons.notifications_none),
                Icon(Icons.search),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/guimmam_logo.jpg'),
                )
              ],
            ),
          )
        ],
      ),
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? const Icon(Icons.home)
                  : const Icon(Icons.home_outlined),
              label: 'Główna'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? const Icon(Icons.explore)
                  : const Icon(Icons.explore_outlined),
              label: 'Eksploruj'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? const Icon(Icons.subscriptions)
                  : const Icon(Icons.subscriptions_outlined),
              label: 'Subskrypcje'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? const Icon(Icons.video_library)
                  : const Icon(Icons.video_library_outlined),
              label: 'Biblioteka'),
        ],
      ),
    );
  }
}
