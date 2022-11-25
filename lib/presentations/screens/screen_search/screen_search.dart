import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/application/search_bloc/screen_search_bloc.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/presentations/widgets/music_list_tile.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({
    required this.audioPlayer,
    super.key,
  });
  final AssetsAudioPlayer audioPlayer;
  final Box<Songs> songBox = getSongBox();
  final List<Songs> allSongs = [];
  final List<Songs> searchfoundSongs = [];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ScreenSearchBloc>(context).add(const InitialStateEvent());
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
        title: const Text('Search',
            style: TextStyle(
                fontFamily: "acme",
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                fontSize: 20)),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: bgColor(),
        ),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 70, top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                    child: TextField(
                      onChanged: (value) {
                        BlocProvider.of<ScreenSearchBloc>(context).add(
                          SearchStateEvent(enteredSong: value),
                        );
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: ' Search Songs',
                        hintStyle: TextStyle(
                            fontFamily: "acme",
                            overflow: TextOverflow.ellipsis,
                            fontSize: 17),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: BlocBuilder<ScreenSearchBloc, ScreenSearchState>(
                  builder: (context, state) {
                    return state.searchfoundSongs.isEmpty
                        ? const Center(
                            child: Text(
                              'No Songs Found',
                              style: TextStyle(
                                fontFamily: "acme",
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemBuilder: (context, index) {
                              return ListTileMusic(
                                audioPlayer: audioPlayer,
                                index: index,
                                songList: state.searchfoundSongs,
                              );
                            },
                            itemCount: state.searchfoundSongs.length,
                          );
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
