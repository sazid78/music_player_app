import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:music_player_app/controller/songDataController.dart';
import 'package:music_player_app/controller/song_player_controller.dart';
import 'package:music_player_app/presentation/config/colors.dart';
import 'package:music_player_app/presentation/screens/play_song_screen.dart';
import 'package:music_player_app/presentation/widgets/song_page_header.dart';
import 'package:music_player_app/presentation/widgets/song_tile.dart';
import 'package:music_player_app/presentation/widgets/trending_song_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SongDataController songDataController = Get.put(SongDataController());
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 15,),
              const SongPageHeader(),
              const SizedBox(height: 15,),
              const TrendingSongSlider(),
              const SizedBox(height: 20,),
              Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
                        songDataController.isDeviceSong.value = false;
                      },
                      child: Text("Cloud Song",style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: songDataController.isDeviceSong.value ? labelColor : primaryColor
                      ),)),
                  InkWell(
                      onTap: (){
                        songDataController.isDeviceSong.value = true;
                      },
                      child: Text("Device Song",style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: songDataController.isDeviceSong.value ? primaryColor : labelColor,)))
                ],
              ),),
              const SizedBox(height: 20,),
              Obx(() => songDataController.isDeviceSong.value ?
               Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children:
                      songDataController.localSongList.value.map((e) => SongTile(songName: e.title,onPress: (){
                        songPlayerController.playLocalAudio(e.data);
                        Get.to(PlaySongScreen());
                      },)).toList(),
                  ),
                ),
              ) : const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // SongTile(),
                      // SongTile(),
                      // SongTile(),
                      // SongTile(),
                      // SongTile(),
                      // SongTile(),
                      // SongTile(),
                      // SongTile(),
                      // SongTile(),
                      // SongTile(),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      )
    );
  }
}
