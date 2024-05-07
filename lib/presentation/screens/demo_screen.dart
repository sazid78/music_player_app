import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player_app/controller/cloud_song_controller.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CloudSongController cloudSongController = Get.put(CloudSongController());
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
           cloudSongController.getCloudSound();
        }, child: Text("Call Database")),
      ),
    );
  }
}
