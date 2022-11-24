import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/presentations/screens/screen_search/screen_search.dart';
import 'package:tunezz_pro/presentations/screens/screen_settings/screen_settings.dart';
import 'package:tunezz_pro/presentations/tabs/tab_music.dart';
import 'package:tunezz_pro/presentations/tabs/tab_playlist.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'tunezz',
                  style: TextStyle(
                    fontSize: width * 0.085,
                    fontFamily: "Alegreya Sans",
                    color: const Color.fromARGB(227, 18, 179, 219),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ScreenSearch(audioPlayer: audioPlayer),
                  ));
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ScreenSettings(),
                    ),
                  );
                },
                icon: const Icon(Icons.settings)),
          ],
          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontSize: 15),
            tabs: [
              Tab(
                child: Text(
                  'Music',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "acme",
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Playlist',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "acme",
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: bgColor(),
          ),
          child: Column(
            children: [
              Expanded(
                child: SafeArea(
                  child: TabBarView(
                    children: [
                      Music(audioPlayer: audioPlayer),
                      PlaylistTab(audioPlayer: audioPlayer),
                    ],
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
