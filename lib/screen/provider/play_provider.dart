import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';

class Play_provider extends ChangeNotifier
{

  bool isplay =true;
  int add=0;
  bool issong=true;
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  void start(bool value)
  {
    isplay=value;
    notifyListeners();
  }

  List song=[];


  void storageList(List list)
  {
    song.clear();
    song.addAll(list);
    notifyListeners();
  }

  void addindex(int index)
  {
    add=index;
    notifyListeners();
  }

  void createmusic()
  {
    notifyListeners();
  }

  void playsong()
  {
   _assetsAudioPlayer.play();
   notifyListeners();
  }
  void stopsong()
  {
    _assetsAudioPlayer.pause();
    notifyListeners();
  }

  void playingsong()
  {
    if(issong)
      {
        playsong();
        issong=true;
        notifyListeners();
      }
    else
      {
        stopsong();
        issong=false;
        notifyListeners();
      }

      notifyListeners();
  }

  List homeModalList = [];
  int audioSongPlayerIndex = 0;
  double _sliderValue = 0.0;
  double _maxDuration = 0.0;
  bool isplayingsong = true;

  double get sliderValue => _sliderValue;

  double get maxDuration => _maxDuration;

  AudioPlayerProvider() {
    _openAudio();
    notifyListeners();
  }

  Future<void> _openAudio() async {
    await _assetsAudioPlayer.open(
      Audio(homeModalList[audioSongPlayerIndex]['music']),
      autoStart: !isplayingsong,
      showNotification: true,
    );
    _assetsAudioPlayer.currentPosition.listen((Duration position) {
      if (_maxDuration != 0.0) {
        _sliderValue = position.inSeconds.toDouble();
        notifyListeners();
      }
    });

    _assetsAudioPlayer.current.listen((Playing? playing) {
      if (playing != null) {
        final duration = playing.audio.duration;
        _maxDuration = duration.inSeconds.toDouble();
        notifyListeners();
      }
    });
  }


}