import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player_app/controller/song_player_controller.dart';
import 'package:music_player_app/presentation/config/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SongAndVolume extends StatefulWidget {
  const SongAndVolume({super.key});

  @override
  State<SongAndVolume> createState() => _SongAndVolumeState();
}

class _SongAndVolumeState extends State<SongAndVolume> {
  SongPlayerController songPlayerController = Get.put(SongPlayerController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => SfRadialGauge(
      animationDuration: 1,
      enableLoadingAnimation: true,
      axes: [
        RadialAxis(
          useRangeColorForAxis: true,
          startAngle: 0,
          endAngle: 180,
          canRotateLabels: false,
          interval: 10,
          isInversed: false,
          maximum: 1,
          minimum: 0,
          showAxisLine: true,
          showLabels: false,
          showTicks: false,
          ranges: [
            GaugeRange(
              startValue: 0,
              endValue: songPlayerController.volumeLavel.value,
              color: primaryColor,
            )
          ],
          pointers: [
            MarkerPointer(
              color: primaryColor,
              borderWidth: 20,
              value: songPlayerController.volumeLavel.value,
              onValueChanged: (vaLuee){
                songPlayerController.changeVolume(vaLuee);
              },
              enableAnimation: true,
              enableDragging: true,
              markerType: MarkerType.circle,
              markerWidth: 20,
              markerHeight: 20,
            )
          ],
          annotations: [
            GaugeAnnotation(
                horizontalAlignment: GaugeAlignment.center,
                widget: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      image: DecorationImage(image: AssetImage("assets/images/cover.jpg")),
                      color: divColor
                  ),
                )
            )
          ],
        )
      ],
    ));
  }
}
