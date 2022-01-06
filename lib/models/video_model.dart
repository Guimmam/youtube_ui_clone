import 'package:flutter/material.dart';

class Video {
  final String videoName;
  final String authorName;
  final String views;
  final String publishDate;
  final String videoLength;
  final Image videoImage;
  final Image authorImage;

  Video(
    this.videoName,
    this.authorName,
    this.views,
    this.publishDate,
    this.videoLength,
    this.videoImage,
    this.authorImage,
  );
}

List<Video> videos = [
  Video(
    'Peru 8K HDR 60FPS (FUHD)',
    'Jacob + Katie Schwarz',
    '59 mln wyświetleń',
    '4 lata temu',
    '5:38',
    Image.asset('assets/peru_video.jpg'),
    Image.asset('assets/jacob_logo.jpg'),
  ),
];
