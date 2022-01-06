import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video.dart';

class VideoWidget extends StatelessWidget {
  final int index;
  const VideoWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          videos[index].videoImage,
        ],
      ),
    );
  }
}
