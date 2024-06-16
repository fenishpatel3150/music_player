import 'package:flutter/material.dart';
import 'package:music_player/screen/provider/play_provider.dart';

class MusicPlayer extends StatelessWidget {
  final Play_provider playFalse;
  final Play_provider playTrue;
  final int index;

  MusicPlayer({
    required this.playFalse,
    required this.playTrue,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(playTrue.song[playTrue.add]['image']),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.shuffle,
                color: Colors.white,
                size: 30,
              ),
              Text(
                playTrue.song[playTrue.add]['name'],
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.repeat_outlined,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 30,
              ),
              Icon(
                Icons.playlist_add,
                color: Colors.grey,
                size: 30,
              ),
              Icon(
                Icons.equalizer_sharp,
                color: Colors.grey,
                size: 30,
              ),
              Icon(
                Icons.alarm,
                color: Colors.grey,
                size: 30,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '02:20',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 35),
              child: Container(
                height: 5,
                width: 260,
                child: Slider(
                  activeColor: Color(0xffeb3008),
                  min: 0,
                  max: 100,
                  value: playTrue.sliderValue,
                  onChanged: (value) {
                   if(playTrue.maxDuration>0)
                     {

                     }
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                '00:00',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.replay_10,
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
              },
              icon:Icon(
                Icons.skip_previous_rounded,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xffeb3008),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  (playFalse.isplayingsong) ? Icons.play_arrow : Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
              },
              icon: Icon(
                Icons.skip_next_rounded,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.forward_10,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
