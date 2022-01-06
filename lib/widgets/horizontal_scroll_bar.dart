import 'package:flutter/material.dart';

class HorizontalScrollBar extends StatelessWidget {
  const HorizontalScrollBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              side: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
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
              side: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
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
              side: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
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
              side: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
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
              side: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
            ),
          ),
        ],
      ),
    );
  }
}
