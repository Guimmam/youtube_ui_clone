import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/screens/Explore_screen.dart';
import 'package:youtube_ui_clone/screens/home_screen.dart';
import 'package:youtube_ui_clone/screens/library_screen.dart';
import 'package:youtube_ui_clone/screens/subscriptions_screen.dart';
import 'package:youtube_ui_clone/widgets/horizontal_scroll_bar.dart';

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
    HomeScreen(),
    ExploreScreen(),
    SubscriptionsScreen(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(8),
          child: Image.asset(
            'assets/yt_logo_dark.png',
          ),
        ),
        leadingWidth: 120,
        actionsIconTheme: IconThemeData(color: Colors.white),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                  ? Icon(Icons.home)
                  : Icon(Icons.home_outlined),
              label: 'Główna'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? Icon(Icons.explore)
                  : Icon(Icons.explore_outlined),
              label: 'Eksploruj'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? Icon(Icons.subscriptions)
                  : Icon(Icons.subscriptions_outlined),
              label: 'Subskrypcje'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? Icon(Icons.video_library)
                  : Icon(Icons.video_library_outlined),
              label: 'Biblioteka'),
        ],
      ),
    );
  }
}
