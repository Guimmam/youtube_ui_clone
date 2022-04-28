import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video_model.dart';
import 'package:youtube_ui_clone/widgets/video_widget.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
  int? _value = 1;
  List<String> horizontalButtons = [
    'Wszystko',
    'Dziś',
    'Oglądaj dalej',
    'Nieobejrzane',
    'Na żywo',
    'Posty',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: videos.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: horizontalButtons.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ChoiceChip(
                        label: Text(horizontalButtons.elementAt(index)),
                        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
                        side: BorderSide(
                            color: Colors.white.withOpacity(0.2), width: 1),
                        selectedColor: Colors.white,
                        labelStyle: TextStyle(
                            color:
                                _value == index ? Colors.black : Colors.white),
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = index;
                          });
                        },
                      ),
                    ),
                  ),
                );
              } else {
                return VideoWidget(index - 1);
              }
            }),
      ),
    );
  }
}
