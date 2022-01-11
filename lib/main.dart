import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/screens/appbar_navbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontSize: 12),
            selectedItemColor: Colors.black,
            selectedLabelStyle: TextStyle(fontSize: 12)),
      ),
      darkTheme: ThemeData(
          listTileTheme: ListTileThemeData(
            iconColor: Colors.white,
            textColor: Colors.white,
          ),
          primaryIconTheme: IconThemeData(color: Colors.white),
          popupMenuTheme: PopupMenuThemeData(
            color: Color.fromARGB(255, 26, 26, 26),
            textStyle: TextStyle(color: Colors.white),
          ),

          // primarySwatch: Colors.red,
          buttonTheme: ButtonThemeData(
            buttonColor: Color.fromARGB(255, 26, 26, 26),
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white54),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              unselectedItemColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 12),
              selectedItemColor: Colors.white,
              selectedLabelStyle: TextStyle(fontSize: 12)),
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black)),
      home: const AppbarNavbar(),
    );
  }
}
