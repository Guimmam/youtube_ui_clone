import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/models/video_model.dart';
import 'package:youtube_ui_clone/widgets/small_video_widget.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Najnowsze',
                        style: Theme.of(context).textTheme.bodyText1)),
              ),
              SizedBox(
                height: 155,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: videos.length,
                  itemBuilder: (context, index) => SmallVideoWidget(index),
                ),
              ),
              const Divider(
                thickness: 2,
                color: Color.fromARGB(255, 26, 26, 26),
              ),
              const ListTile(
                leading: Icon(Icons.history),
                title: Text('Historia'),
              ),
              const ListTile(
                leading: Icon(Icons.video_collection_outlined),
                title: Text('Twoje filmy'),
              ),
              const ListTile(
                leading: Icon(Icons.local_movies_outlined),
                title: Text('Kupione filmy'),
              ),
              const ListTile(
                leading: Icon(Icons.watch_later_outlined),
                title: Text('Do obejrzenia'),
                subtitle: Text('99 nieobejrzanych filmów'),
              ),
              const Divider(
                thickness: 2,
                color: Color.fromARGB(255, 26, 26, 26),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      'Playlisty',
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
                    Expanded(
                      child: PopupMenuButton(
                        iconSize: 18,
                        icon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Ostatnio dodane',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        itemBuilder: (context) => [
                          const PopupMenuItem(child: Text('A-Z')),
                          const PopupMenuItem(child: Text('Ostatnio dodane')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const ListTile(
                iconColor: Colors.blue,
                leading: Icon(Icons.add_sharp),
                title: Text(
                  'Nowa playlista',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.thumb_up_alt_outlined),
                title: Text('Polubione filmy'),
              ),
              const Padding(
                padding: EdgeInsets.all(50.0),
                child: Center(child: Text('Nie masz żadnych playlist')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
