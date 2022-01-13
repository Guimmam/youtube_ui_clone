import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video_model.dart';
import 'package:youtube_ui_clone/widgets/video_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: videos.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Filmy zyskujące popularność',
                          style: Theme.of(context).textTheme.bodyText1)),
                );
              } else
                return VideoWidget(index - 1);
            }),
      ),
    );
  }
}
