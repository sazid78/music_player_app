import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_player_app/controller/song_player_controller.dart';
import 'package:music_player_app/presentation/config/colors.dart';

class SongControllerButtons extends StatelessWidget {
  const SongControllerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("02:34"),
            Text("/"),
            Text(
              "02:04",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/back.svg",
              width: 25,
            ),
            SizedBox(
              width: 40,
            ),
            Obx(
              () => songPlayerController.isPlaying.value
                  ? InkWell(
                      onTap: () {
                        songPlayerController.pausePlaying();
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: SvgPicture.asset(
                          "assets/icons/pause.svg",
                          width: 25,
                        )),
                      ),
                    )
                  : InkWell(
                onTap: (){
                  songPlayerController.resumePlaying();
                },
                    child: Container(
                        width: 60,
                        height: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: SvgPicture.asset(
                          "assets/icons/play.svg",
                          width: 25,
                        )),
                      ),
                  ),
            ),
            SizedBox(
              width: 40,
            ),
            SvgPicture.asset(
              "assets/icons/next.svg",
              width: 25,
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              "assets/icons/suffle.svg",
              width: 25,
            ),
            SvgPicture.asset(
              "assets/icons/repeat.svg",
              width: 25,
            ),
            SvgPicture.asset(
              "assets/icons/songbook.svg",
              width: 25,
            ),
            SvgPicture.asset(
              "assets/icons/heart.svg",
              width: 25,
            ),
          ],
        )
      ],
    );
  }
}
