import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:tunezz_pro/functions/dialogbox.dart';
import 'package:tunezz_pro/presentations/screens/screen_playlist/screen_view_playlist.dart';

class PlaylistTile extends StatelessWidget {
  const PlaylistTile({
    super.key,
    required this.playlistname,
    required this.songlength,
    required this.audioPlayer,
  });
  final String playlistname;
  final int songlength;
  final AssetsAudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ViewPlaylist(
                  playlistname: playlistname,
                  audioPlayer: audioPlayer,
                ))),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF3F9EA4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Text(
                  playlistname,
                  style: const TextStyle(
                    fontFamily: "acme",
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 20,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.edit, color: Colors.white),
                        onPressed: () =>
                            showPlaylistRenameAlertBox(context, playlistname)),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.white),
                      onPressed: () =>
                          showPlaylistDeleteAlertBox(context, playlistname),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Text(
                  '$songlength Songs',
                  style: const TextStyle(
                    fontFamily: "acme",
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
