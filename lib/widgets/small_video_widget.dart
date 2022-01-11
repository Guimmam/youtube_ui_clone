import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video_model.dart';

class SmallVideoWidget extends StatelessWidget {
  const SmallVideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 1;
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.45,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(videos[index].videoImagePath),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: 6,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white.withOpacity(0.6),
                  )),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: 6,
                    width: MediaQuery.of(context).size.width * 0.1,
                    color: Colors.red,
                  )),
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
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Leksiu',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Container(
                    height: 20,
                    width: 12,
                    //padding: EdgeInsets.only(left: 10),
                    child: PopupMenuButton(
                      padding: EdgeInsets.zero,
                      iconSize: 18,
                      // padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                            child: Text('Zapisz na liście Do obejrzenia')),
                        PopupMenuItem(child: Text('Zapisz na playliście')),
                        PopupMenuItem(child: Text('Udostępnij')),
                        PopupMenuItem(child: Text('Usuń z historii oglądania')),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Mateusz Spysiński'))
            ],
          )
        ],
      ),
    );
  }
}
