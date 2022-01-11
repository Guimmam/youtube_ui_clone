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
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage(videos[index].authorImagePath),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 20,
                    margin: EdgeInsets.only(bottom: 35),
                    //color: Colors.red,
                    child: PopupMenuButton(
                      
                      padding: EdgeInsets.only(bottom: 50),
                      iconSize: 18,
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                            child: Text('Zapisz na liście Do obejrzenia')),
                        PopupMenuItem(child: Text('Zapisz na playliście')),
                        PopupMenuItem(child: Text('Udostępnij')),
                        PopupMenuItem(child: Text('Nie interesuje mnie to')),
                        PopupMenuItem(child: Text('Nie polecaj kanału')),
                        PopupMenuItem(child: Text('Zgłoś')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
