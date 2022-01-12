import 'package:flutter/material.dart';

class Video {
  final String videoTitle;
  final String authorName;
  final String views;
  final String publishDate;
  final String videoLength;
  final String videoImagePath;
  final String authorImagePath;

  Video(
    this.videoTitle,
    this.authorName,
    this.views,
    this.publishDate,
    this.videoLength,
    this.videoImagePath,
    this.authorImagePath,
  );
}

List<Video> videos = [
  Video(
    'Peru 8K HDR 60FPS (FUHD)',
    'Jacob + Katie Schwarz',
    '59 mln wyświetleń',
    '4 lata temu',
    '5:38',
    'assets/peru_video.jpg',
    'assets/jacob_logo.jpg',
  ),
  Video(
    'iPhone 13 Pro | RECENZJA po 4 miesiącach',
    'nieantyfan',
    '4,6 tys. wyświetleń',
    '1 dzień temu',
    '13:04',
    'assets/iphone13_video.jpg',
    'assets/nieantyfan_logo.jpg',
  ),
  Video(
    'Peru 8K HDR 60FPS (FUHD)',
    'Jacob + Katie Schwarz',
    '59 mln wyświetleń',
    '4 lata temu',
    '5:38',
    'assets/peru_video.jpg',
    'assets/jacob_logo.jpg',
  ),
  Video(
    'Peru 8K HDR 60FPS (FUHD)',
    'Jacob + Katie Schwarz',
    '59 mln wyświetleń',
    '4 lata temu',
    '5:38',
    'assets/peru_video.jpg',
    'assets/jacob_logo.jpg',
  ),
];
