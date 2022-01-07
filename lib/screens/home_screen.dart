import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video_model.dart';
import 'package:youtube_ui_clone/widgets/video_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: Center(
        //   child: Text('Główna', style: Theme.of(context).textTheme.bodyText1),
        // ),
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
    return ListView.builder(
      itemCount: numberOfVideos,
      itemBuilder: (context, index) => VideoWidget(index),
    );
  }
}
