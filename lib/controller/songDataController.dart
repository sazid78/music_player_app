import 'package:get/get.dart';
import 'package:music_player_app/controller/song_player_controller.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class SongDataController extends GetxController {
  final audioQuery = OnAudioQuery();
  SongPlayerController songPlayerController = Get.put(SongPlayerController());

  RxList<SongModel> localSongList = <SongModel>[].obs;
  RxBool isDeviceSong = false.obs;
  RxInt currentSongPlayingIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    storagePermission();
  }

  void getLocalSongs() async {
    localSongList.value = await audioQuery.querySongs(
        ignoreCase: true,
        orderType: OrderType.ASC_OR_SMALLER,
        sortType: null,
        uriType: UriType.EXTERNAL);
  }

  void storagePermission() async {
    try {
      var perm = await Permission.storage.request();
      if (perm.isGranted) {
        print("Permission Granted");
        getLocalSongs();
      } else {
        print("Permission denied");
        await Permission.storage.request();
      }
    } catch (ex) {
      print(ex);
    }
  }

  void findCurrentSongPlayingIndex(int songId) {
    var index = 0;
    localSongList.forEach((e) {
      if (e.id == songId) {
        currentSongPlayingIndex.value = index;
      }
    });
    print(songId);
    print(currentSongPlayingIndex);
  }

  void playNextSong() {
    int songListLength = localSongList.length;
    currentSongPlayingIndex.value = currentSongPlayingIndex.value + 1;

    if (currentSongPlayingIndex.value < songListLength) {
      SongModel nextSong = localSongList[currentSongPlayingIndex.value];
      songPlayerController.playLocalAudio(nextSong);
    }
  }

  void playPreviousSong() {
    int songListLength = localSongList.length;
    if(currentSongPlayingIndex.value != 0){
      currentSongPlayingIndex.value = --currentSongPlayingIndex.value;
    }
    if (currentSongPlayingIndex.value < songListLength) {
      SongModel nextSong = localSongList[currentSongPlayingIndex.value];
      songPlayerController.playLocalAudio(nextSong);
    }
  }
}
