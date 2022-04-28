import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video_model.dart';

class VideoWidget extends StatelessWidget {
  final int index;
  // ignore: use_key_in_widget_constructors
  const VideoWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  padding: const EdgeInsets.all(3),
                  color: Colors.black,
                  child: Text(
                    videos[index].videoLength,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(videos[index].authorImagePath),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(videos[index].videoTitle,
                            style: Theme.of(context).textTheme.bodyText1),
                        Container(height: 4),
                        Text(
                          '${videos[index].authorName} • ${videos[index].views} • ${videos[index].publishDate}',
                          maxLines: 2,
                          softWrap: true,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: PopupMenuButton(
                    padding: const EdgeInsets.only(bottom: 30),
                    iconSize: 18,
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                          child: Text('Zapisz na liście Do obejrzenia')),
                      const PopupMenuItem(child: Text('Zapisz na playliście')),
                      const PopupMenuItem(child: Text('Udostępnij')),
                      const PopupMenuItem(
                          child: Text('Nie interesuje mnie to')),
                      const PopupMenuItem(child: Text('Nie polecaj kanału')),
                      const PopupMenuItem(child: Text('Zgłoś')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
