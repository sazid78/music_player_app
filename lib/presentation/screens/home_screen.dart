import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_player_app/presentation/widgets/song_page_header.dart';
import 'package:music_player_app/presentation/widgets/song_tile.dart';
import 'package:music_player_app/presentation/widgets/trending_song_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cloud Song",style: Theme.of(context).textTheme.bodySmall,),
                  Text("Device Song",style: Theme.of(context).textTheme.bodySmall,)
                ],
              ),
              const SizedBox(height: 20,),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                       SongTile(),
                       SongTile(),
                       SongTile(),
                       SongTile(),
                       SongTile(),
                       SongTile(),
                       SongTile(),
                       SongTile(),
                       SongTile(),
                       SongTile(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
