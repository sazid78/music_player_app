import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SongDetails extends StatelessWidget {
  const SongDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/icons/play_outline.svg"),
            SizedBox(width: 10,),
            Text("210 Plays",style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("kavhi mujh main avhi",style: Theme.of(context).textTheme.bodyLarge,),
            Row(
              children: [
                SvgPicture.asset("assets/icons/download.svg",width: 25,),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Arijit Singh",style: Theme.of(context).textTheme.bodySmall,),
          ],
        ),
      ],
    );
  }
}
