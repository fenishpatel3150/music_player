import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_player/screen/provider/play_provider.dart';
import 'package:music_player/utils/song_list.dart';
import 'package:music_player/screen/view/music_screen/music_screen.dart';
import 'package:provider/provider.dart';

Widget LastAdded(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
          children: List.generate(
            playsong.length,
                (index) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => music_screen(),
                              ));
                          Provider.of<Play_provider>(context,listen: false).addindex(index);
                          Provider.of<Play_provider>(context,listen: false).storageList(playsong);
                        },
                        child: Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(playsong[index]['image']),
                                  fit: BoxFit.cover),
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(18)),

                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      playsong[index]['name'],
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          )),
    ),
  );
}
  Widget Songs(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: List.generate(playsong2.length, (index) => Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => music_screen(),
                      ));
                  Provider.of<Play_provider>(context,listen: false).addindex(index);
                  Provider.of<Play_provider>(context,listen: false).storageList(playsong2);
                },
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(playsong2[index]['image']),
                          fit: BoxFit.cover),
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(18)),
                ),
              ),
            ),
            Text(
              playsong2[index]['name'],
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),),
      ),
    ),
  );
  }

