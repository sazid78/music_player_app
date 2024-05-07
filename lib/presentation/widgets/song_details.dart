import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_player_app/controller/song_player_controller.dart';

class SongDetails extends StatelessWidget {
  const SongDetails({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/icons/play_outline.svg"),
            SizedBox(
              width: 10,
            ),
            Text(
              "210 Plays",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Obx(() => Text(
                "${songPlayerController.songTitle.value}",
                maxLines: 1,
                style: Theme.of(context).textTheme.bodyLarge,
              ),)
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/download.svg",
                  width: 25,
                ),
              ],
            ),
          ],
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${songPlayerController.singerName.value}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}
