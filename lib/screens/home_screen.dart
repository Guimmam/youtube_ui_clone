import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video_model.dart';
import 'package:youtube_ui_clone/widgets/horizontal_scroll_bar.dart';
import 'package:youtube_ui_clone/widgets/video_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
   
        child: VideoList(
          numberOfVideos: videos.length,
        ),
      ),
    );
  }
}

class VideoList extends StatelessWidget {
  final int numberOfVideos;

  const VideoList({Key? key, this.numberOfVideos = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: numberOfVideos + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return HorizontalScrollBar();
                } else
                  return VideoWidget(index - 1);
              }),
        ),
      ],
    );
  }
}
