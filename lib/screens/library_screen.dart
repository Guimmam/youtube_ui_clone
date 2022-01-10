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
              Container(
                height: 155,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => SmallVideoWidget(),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color.fromARGB(255, 26, 26, 26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
