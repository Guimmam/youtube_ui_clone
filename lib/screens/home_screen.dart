import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Chip(
                          label: Text(
                            'Wszystko',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Color.fromARGB(255, 26, 26, 26),
                          side: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Chip(
                          label: Text(
                            'Animacja',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Color.fromARGB(255, 26, 26, 26),
                          side: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Chip(
                          label: Text(
                            'Na żywo',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Color.fromARGB(255, 26, 26, 26),
                          side: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Chip(
                          label: Text(
                            'Fitness',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Color.fromARGB(255, 26, 26, 26),
                          side: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Chip(
                          label: Text(
                            'Gry platformowe',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Color.fromARGB(255, 26, 26, 26),
                          side: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
