import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_app/model/my_song_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongPlayerController extends GetxController {
  final player = AudioPlayer();
  RxBool isPlaying = false.obs;
  RxString currentTime = "0".obs;
  RxString totalTime = "0".obs;
  RxDouble sliderValue = 0.0.obs;
  RxDouble sliderMaxValue = 0.0.obs;
  RxString songTitle = "".obs;
  RxString singerName = "".obs;
  RxBool isLoop = false.obs;
  RxBool isSuffle = false.obs;
  RxDouble volumeLavel = 0.2.obs;

  void playLocalAudio(SongModel song) async {
    songTitle.value = song.title;
    singerName.value = song.artist!;

    await player.setAudioSource(AudioSource.uri(
      Uri.parse(song.data),
    ));
    player.play();
    updatePosition();
    isPlaying.value = true;
  }

  void playCloudSong(MySongModel song) async {
    songTitle.value = song.title!;
    singerName.value = song.artist!;

    await player.setAudioSource(AudioSource.uri(
      Uri.parse(song.data!),
    ));
    player.play();
    updatePosition();
    isPlaying.value = true;
  }

  void changeVolume(double volume){
    volumeLavel.value = volume;
    player.setVolume(volumeLavel.value);
  }

  void playRandomSong() async {
    if(isSuffle.value){
      await player.setShuffleModeEnabled(false);
    }else{
      await player.setShuffleModeEnabled(true);
    }
    isSuffle.value = !isSuffle.value;
  }

  void setLoopSong() async{
    await player.setLoopMode(LoopMode.one);
    if(isLoop.value){
      await player.setLoopMode(LoopMode.off);
    }else{
      await player.setLoopMode(LoopMode.one);
    }
    isLoop.value = !isLoop.value;
  }


  void resumePlaying() async {
    isPlaying.value = true;
    await player.play();
  }

  void pausePlaying() async {
    isPlaying.value = false;
    await player.pause();
  }

  void changeSongSlider(Duration position){
    player.seek(position);
  }

  void updatePosition() async{
    try {
      player.durationStream.listen((d) {
        totalTime.value = d.toString().split(".")[0];
        sliderMaxValue.value = d!.inSeconds.toDouble();
      });
      player.positionStream.listen((p) {
        currentTime.value = p.toString().split(".")[0];
        sliderValue.value = p.inSeconds.toDouble();
      });
    }catch(e){
      print(e);
    }
  }
}
