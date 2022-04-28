
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
    'M1 Max MacBook Pro Review: Truly Next Level!',
    'Marques Brownlee',
    '5,3 mln wyświetleń',
    '2 miesiące temu',
    '22:38',
    'assets/mac_m1_video.jpg',
    'assets/marques_logo.jpg',
  ),
  Video(
    'Samsung failed. How did Apple do it?',
    'TechAltar',
    '78 tys. wyświetleń',
    '2 dni temu',
    '13:52',
    'assets/how_apple_won_video.jpg',
    'assets/tech_altar_logo.jpg',
  ),
  Video(
    'Ameca the Humanoid Robot at CES 2022',
    'MrKeybrd',
    '187 tys. wyświetleń',
    '9 dni temu',
    '4:20',
    'assets/humanoid_video.jpg',
    'assets/mrkeybrd_logo.jpg',
  ),
];
