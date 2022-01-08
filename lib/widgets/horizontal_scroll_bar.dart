import 'package:flutter/material.dart';

class HorizontalScrollBar extends StatefulWidget {
  const HorizontalScrollBar({
    Key? key,
  }) : super(key: key);

  @override
  State<HorizontalScrollBar> createState() => _HorizontalScrollBarState();
}

class _HorizontalScrollBarState extends State<HorizontalScrollBar> {
  int? _value = 1;
  List<String> horizontalButtons = [
    'Wszystko',
    'Na żywo',
    'Muzyka',
    'Kreskówki',
    'Gry platformowe',
    'Playlisty Youtube Mix',
    'Maximus',
    'Fitness'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: horizontalButtons.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 26, 26, 26),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.explore_outlined),
                        label: Text('Odkrywaj')),
                  ),
                  VerticalDivider(
                    indent: 6,
                    endIndent: 6,
                    thickness: 2,
                    color: Color.fromARGB(255, 26, 26, 26),
                  ),
                ],
              );
            } else
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: ChoiceChip(
                  label: Text(horizontalButtons.elementAt(index - 1)),
                  backgroundColor: Color.fromARGB(255, 26, 26, 26),
                  side: BorderSide(
                      color: Colors.white.withOpacity(0.2), width: 1),
                  selectedColor: Colors.white,
                  labelStyle: TextStyle(
                      color: _value == index ? Colors.black : Colors.white),
                  selected: _value == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = index;
                    });
                  },
                ),
              );
          },
        ));
  }
}
