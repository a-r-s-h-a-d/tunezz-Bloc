import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/functions/dialogbox.dart';
import 'package:tunezz_pro/presentations/screens/screen_favorites/screen_favorites.dart';
import 'package:tunezz_pro/presentations/screens/screen_mostplayed/screen_most_played.dart';
import 'package:tunezz_pro/presentations/screens/screen_recentlyplayed/screen_recently_played.dart';
import 'package:tunezz_pro/presentations/widgets/playlist_tile.dart';

class PlaylistTab extends StatelessWidget {
  const PlaylistTab({
    super.key,
    required this.audioPlayer,
  });
  final AssetsAudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    final Box<List> playlistBox = getPlaylistBox();
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 70),
      child: ListView(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => RecentlyPlayed(
                            audioPlayer: audioPlayer,
                          )));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/recentlyplayed.jpeg'),
                        fit: BoxFit.fill),
                  ),
                  child: const Center(
                    child: Text(
                      'Recently Played',
                      style: TextStyle(
                        fontFamily: "acme",
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => MostlyPlayed(
                        audioPlayer: audioPlayer,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/mostplayed.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Most Played',
                      style: TextStyle(
                        fontFamily: "acme",
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => ScreenFavorites(),
              ));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/favorites.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Center(
                child: Text(
                  'Favorites',
                  style: TextStyle(
                    fontFamily: "acme",
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Playlists',
                style: TextStyle(
                  fontFamily: "acme",
                  color: Colors.white,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                  showPlaylistAddAlertBox(context);
                },
                icon: const Icon(Icons.add),
                color: Colors.white,
                iconSize: 30,
              )
            ],
          ),
          const SizedBox(height: 20),
          ValueListenableBuilder(
            valueListenable: playlistBox.listenable(),
            builder:
                (BuildContext context, Box<List> playlistBox, Widget? child) {
              List keys = playlistBox.keys.toList();
              keys.remove('Favorites');
              keys.remove('MostPlayed');
              keys.remove('Recents');
              return ListView.builder(
                itemCount: keys.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  final String playlistName = keys[index];
                  final List<Songs> songList =
                      playlistBox.get(playlistName)!.toList().cast<Songs>();
                  return PlaylistTile(
                    playlistname: playlistName,
                    songlength: songList.length,
                    audioPlayer: audioPlayer,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
