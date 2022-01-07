import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video_model.dart';

class VideoWidget extends StatelessWidget {
  final int index;
  const VideoWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(videos[index].videoImagePath),
              Positioned(
                bottom: 10,
                right: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    padding: EdgeInsets.all(3),
                    color: Colors.black,
                    child: Text(
                      videos[index].videoLength,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(videos[index].authorImagePath),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(videos[index].videoTitle,
                            style: Theme.of(context).textTheme.bodyText1),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 5,
                          children: [
                            Text(
                              '${videos[index].authorName}',
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(videos[index].views,
                                softWrap: true, overflow: TextOverflow.visible),
                            Text(videos[index].publishDate,
                                style: Theme.of(context).textTheme.bodyText2)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert, color: Colors.white)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
