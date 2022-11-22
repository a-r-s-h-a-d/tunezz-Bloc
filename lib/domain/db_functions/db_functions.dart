import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';

Box<Songs> getSongBox() {
  return Hive.box<Songs>('Songs');
}

Box<List> getPlaylistBox() {
  return Hive.box<List>('Playlist');
}
