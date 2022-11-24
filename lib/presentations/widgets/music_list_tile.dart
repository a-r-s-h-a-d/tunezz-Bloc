import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:tunezz_pro/application/screen_favorite/screen_favorite_bloc.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/functions/dialogbox.dart';
import 'package:tunezz_pro/functions/favorites.dart';
import 'package:tunezz_pro/presentations/widgets/miniplayer_tile.dart';

class ListTileMusic extends StatelessWidget {
  const ListTileMusic({
    required this.audioPlayer,
    required this.songList,
    required this.index,
    super.key,
  });
  final AssetsAudioPlayer audioPlayer;
  final List<Songs> songList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: QueryArtworkWidget(
        id: int.parse(songList[index].id),
        type: ArtworkType.AUDIO,
        nullArtworkWidget: Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.blueGrey),
          child: Icon(
            Icons.music_note,
            color: Colors.white,
            size: MediaQuery.of(context).size.height * 0.06,
          ),
        ),
      ),
      title: Text(
        songList[index].title,
        style: const TextStyle(
            fontFamily: "acme",
            color: Colors.white,
            overflow: TextOverflow.ellipsis,
            fontSize: 17),
      ),
      subtitle: Text(
        songList[index].artist == "<unknown>"
            ? "Unknown Artist"
            : songList[index].artist,
        style: const TextStyle(
            fontFamily: "lato",
            color: Colors.white,
            overflow: TextOverflow.ellipsis,
            fontSize: 14),
      ),
      trailing: PopupMenuButton(
        icon: const Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        color: Colors.grey,
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Center(
              child: IconButton(
                onPressed: () {
                  BlocProvider.of<ScreenFavoriteBloc>(context)
                      .add(const GetFavoriteList());
                  FavFunction.addtoFavorites(
                    context: context,
                    id: songList[index].id,
                  );
                  FavFunction.isFav(id: songList[index].id);
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  FavFunction.isFav(id: songList[index].id),
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ),
          PopupMenuItem(
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  showAddtoplaylistBox(context, songList[index].id);
                },
                icon: const Icon(
                  Icons.playlist_add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        showBottomSheet(
          enableDrag: false,
          context: context,
          builder: (context) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 2),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueGrey,
                ),
                child: ListTileMiniplayer(
                  audioPlayer: audioPlayer,
                  songList: songList,
                  index: index,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
