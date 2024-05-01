import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player_app/presentation/config/colors.dart';

class SongTile extends StatelessWidget {
  const SongTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: divColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/play.svg"),
          const SizedBox(width: 15,),
          Text("khavi mujh main adhi",style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    );
  }
}
