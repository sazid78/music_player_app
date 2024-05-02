import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player_app/presentation/config/colors.dart';

class SongTile extends StatelessWidget {
  final String songName;
  final VoidCallback onPress;
  const SongTile({super.key, required this.songName, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: divColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/play.svg"),
              const SizedBox(width: 15,),
              Flexible(
                  child: Text(songName,maxLines: 1,style: Theme.of(context).textTheme.bodyMedium,))
            ],
          ),
        ),
      ),
    );
  }
}
