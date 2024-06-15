import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_player/screen/view/home_screen/componets/menu_buttons.dart';
import 'package:music_player/screen/view/home_screen/componets/most_played.dart';
import 'package:music_player/screen/view/home_screen/componets/music_image.dart';
import 'package:music_player/screen/view/home_screen/componets/play_list_name.dart';
import 'package:music_player/screen/view/home_screen/componets/tab_bar.dart';
import 'package:music_player/screen/view/music_screen/music_screen.dart';
import 'package:music_player/utils/song_list.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: SizedBox(
              height: 70, child: Image.asset('assets/image/image1.jpg')),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: DefaultTabController(
            length: 7,
            child: Column(
              children: [
                tab_bar(),
                Expanded(
                    child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              menu_buttons(context, 'Shuffle', Icons.shuffle),
                              menu_buttons(context, 'Play', Icons.play_arrow),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              menu_buttons(context, 'Scan music',
                                  Icons.music_note_rounded),
                              menu_buttons(
                                  context, 'Feedback', Icons.feed_outlined),
                            ],
                          ),
                          playlist_name('Last added'),
                          LastAdded(context),
                          playlist_name('Songs'),
                          Songs(context),
                          playlist_name('Most played'),
                          SizedBox(height: 10,),
                          Column(
                            children: [
                              MostPlayed1(context),
                              MostPlayed2(context),
                              MostPlayed3(context),
                            ],
                          )
                        ],
                      ),
                    ),
                    Center(child: Text('Transit Content')),
                    Center(child: Text('Bike Content')),
                    Center(child: Text('Bike Content')),
                    Center(child: Text('Bike Content')),
                    Center(child: Text('Bike Content')),
                    Center(child: Text('Bike Content')),
                  ],
                ))
              ],
            ),
          ),
        ));
  }

}
