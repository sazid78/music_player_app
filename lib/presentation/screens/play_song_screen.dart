import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player_app/presentation/widgets/play_song_header_button.dart';
import 'package:music_player_app/presentation/widgets/song_and_volume.dart';
import 'package:music_player_app/presentation/widgets/song_controller_button.dart';
import 'package:music_player_app/presentation/widgets/song_details.dart';

class PlaySongScreen extends StatelessWidget {


  const PlaySongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              PlaySongHeaderButton(),
              SizedBox(height: 10,),
              SongAndVolume(),
              SizedBox(height: 20,),
              SongDetails(
              ),
              SizedBox(height: 30,),
              SizedBox(height: 10,),
              Spacer(),
              SongControllerButtons()
            ],
          ),
        ),
      ),
    );
  }
}
