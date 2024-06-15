import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screen/provider/play_provider.dart';
import 'package:music_player/screen/view/music_screen/componets/musicplayer.dart';
import 'package:music_player/utils/song_list.dart';
import 'package:provider/provider.dart';

class music_screen extends StatefulWidget {
  const music_screen({super.key});

  @override
  State<music_screen> createState() => _music_screenState();
}

class _music_screenState extends State<music_screen> {
  @override
  Widget build(BuildContext context) {
    final playtrue = Provider.of<Play_provider>(context);
    final playfalse = Provider.of<Play_provider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Songs',style: TextStyle(color: Colors.white),),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          MusicPlayer(playFalse: playfalse, playTrue: playtrue, index: imageindex)
        ],
      ),
    );
  }
}




int imageindex =0 ;
