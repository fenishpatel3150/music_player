<h2 align = "center"> 1. Music Player </h2>

### Music Player App in Flutter Using `assets_audio_player`

**Description:**
This project is a simple music player application built using Flutter and the `assets_audio_player` package. The app allows users to play, pause, and navigate through audio tracks stored as assets within the application. It showcases basic functionalities such as playing a playlist, controlling playback (play, pause, stop), and seeking within a track.

#### Key Features:
1. **Play Local Audio Files**: The app plays audio files stored in the local assets directory.
2. **Playlist Management**: Users can navigate through a playlist of songs.
3. **Playback Controls**: Play, pause, stop, and seek functionalities.
4. **UI Components**: Simple and clean user interface to interact with the music player.

#### Dependencies:
- `flutter`: Flutter SDK
- `assets_audio_player: ^3.1.1`: Audio player package for playing audio files from assets.

### Step-by-Step Guide

1. **Set Up Flutter Project:**
   - Ensure you have Flutter installed on your machine.
   - Create a new Flutter project:
     ```sh
     flutter create music_player_app
     ```
   - Navigate to the project directory:
     ```sh
     cd music_player_app
     ```

2. **Add Dependencies:**
   - Open `pubspec.yaml` and add the `assets_audio_player` dependency:
     ```yaml
     dependencies:
       flutter:
         sdk: flutter
       assets_audio_player: ^3.1.1
     ```
   - Run `flutter pub get` to install the new dependency.

3. **Project Structure:**
   - Organize your assets (audio files) in the `assets` directory. Update `pubspec.yaml` to include these assets:
     ```yaml
     flutter:
       assets:
         - assets/audios/song1.mp3
         - assets/audios/song2.mp3
     ```

4. **Code Implementation:**
   - Create a simple UI for the music player. Open `lib/main.dart` and replace it with the following code:
     ```dart
     import 'package:flutter/material.dart';
     import 'package:assets_audio_player/assets_audio_player.dart';

     void main() {
       runApp(MyApp());
     }

     class MyApp extends StatelessWidget {
       @override
       Widget build(BuildContext context) {
         return MaterialApp(
           home: MusicPlayer(),
         );
       }
     }

     class MusicPlayer extends StatefulWidget {
       @override
       _MusicPlayerState createState() => _MusicPlayerState();
     }

     class _MusicPlayerState extends State<MusicPlayer> {
       final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
       bool isPlaying = false;

       @override
       void initState() {
         super.initState();
         _assetsAudioPlayer.open(
           Playlist(audios: [
             Audio("assets/audios/song1.mp3"),
             Audio("assets/audios/song2.mp3"),
           ]),
           autoStart: false,
           showNotification: true,
         );
       }

       void _playPause() {
         setState(() {
           isPlaying = !isPlaying;
           isPlaying ? _assetsAudioPlayer.play() : _assetsAudioPlayer.pause();
         });
       }

       @override
       void dispose() {
         _assetsAudioPlayer.dispose();
         super.dispose();
       }

       @override
       Widget build(BuildContext context) {
         return Scaffold(
           appBar: AppBar(
             title: Text("Music Player"),
           ),
           body: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Now Playing:"),
                 StreamBuilder<Playing?>(
                   stream: _assetsAudioPlayer.current,
                   builder: (context, snapshot) {
                     final playing = snapshot.data;
                     return Text(playing?.audio.audio.metas.title ?? "Select a song");
                   },
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     IconButton(
                       icon: Icon(Icons.skip_previous),
                       onPressed: () {
                         _assetsAudioPlayer.previous();
                       },
                     ),
                     IconButton(
                       icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                       onPressed: _playPause,
                     ),
                     IconButton(
                       icon: Icon(Icons.skip_next),
                       onPressed: () {
                         _assetsAudioPlayer.next();
                       },
                     ),
                   ],
                 ),
               ],
             ),
           ),
         );
       }
     }
     ```

5. **Run the App:**
   - Ensure you have a connected device or emulator running.
   - Run the app using:
     ```sh
     flutter run
     ```

### Summary:
This Flutter music player app demonstrates how to integrate and use the `assets_audio_player` package to manage audio playback within a Flutter application. The code provided includes setting up the project, managing audio assets, and implementing basic UI controls for audio playback.


<img src = "https://github.com/fenishpatel3150/music_player/assets/143187609/9189b511-2fcf-4169-b118-f3240a95c702" width=22% height=35%>
<img src = "https://github.com/fenishpatel3150/music_player/assets/143187609/91eaf780-bf39-41d1-be0e-771681a39a76" width=22% height=35%>
<img src = "https://github.com/fenishpatel3150/music_player/assets/143187609/93f50351-4e58-4efc-a03b-36edbf961c2a" width=22% height=35%>
<img src = "https://github.com/fenishpatel3150/music_player/assets/143187609/8e271c97-a2e6-45dd-a386-39298d6d7de6" width=22% height=35%>
