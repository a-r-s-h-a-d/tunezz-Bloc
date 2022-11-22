import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

//Playlist--->Add/create
showPlaylistAddAlertBox(BuildContext context) {
  TextEditingController textController = TextEditingController();
  Box<List> playlistBox = getPlaylistBox();
  Future<void> createNewPlaylist() async {
    List<Songs> songList = [];
    final String playlistName = textController.text.trim();
    if (playlistName.isEmpty) {
      return;
    } else {
      await playlistBox.put(playlistName, songList);
    }
  }

  return showDialog(
      context: context,
      builder: (context) {
        final formKey = GlobalKey<FormState>();
        return Form(
          key: formKey,
          child: AlertDialog(
            backgroundColor: const Color.fromARGB(255, 41, 40, 40),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text(
              'Create Playlist',
              style: TextStyle(fontFamily: "acme", color: Colors.white),
            ),
            content: TextFormField(
              autofocus: true,
              style: const TextStyle(color: Colors.white),
              controller: textController,
              validator: (value) {
                final key = getPlaylistBox().keys.toList();
                if (value == null || value.isEmpty) {
                  return 'Field is Empty';
                }
                if (key.contains(value)) {
                  return '$value is Already existed';
                }
                return null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                //fillColor: Color.fromARGB(255, 68, 67, 67),
                //filled: true,
                hintText: 'New Playlist',
                hintStyle:
                    TextStyle(fontFamily: "acme", color: Colors.grey[50]),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontFamily: "acme",
                        color: Colors.red,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await createNewPlaylist();
                        // ignore: use_build_context_synchronously
                        Navigator.of(context).pop();
                      }
                    },
                    icon: const Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    label: const Text(
                      'OK',
                      style: TextStyle(
                        fontFamily: "acme",
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      });
}

//Playlist---->Rename

// class PlaylistRenameAlertBox extends StatefulWidget {
//   const PlaylistRenameAlertBox({super.key});

//   @override
//   State<PlaylistRenameAlertBox> createState() => _PlaylistRenameAlertBoxState();
// }

// class _PlaylistRenameAlertBoxState extends State<PlaylistRenameAlertBox> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

showPlaylistRenameAlertBox(BuildContext context, playlistname) {
  TextEditingController textController =
      TextEditingController(text: playlistname);
  String newPlaylistName = playlistname;
  Box<List> playlistBox = getPlaylistBox();
  //List<Songs> songList = [];
  final keys = playlistBox.keys.toList();
  final formKey = GlobalKey<FormState>();
  return showDialog(
    context: context,
    builder: (context) => Form(
      key: formKey,
      child: AlertDialog(
        backgroundColor: const Color.fromARGB(255, 41, 40, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text(
          'Edit Playlist',
          style: TextStyle(
            fontFamily: "acme",
            color: Colors.white,
          ),
        ),
        content: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'field is empty';
            }
            if (keys.contains(keys)) {
              return '$value is already existed in playlist';
            }
            return null;
          },
          autofocus: true,
          controller: textController,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            //hintText: playlistname,
            hintStyle: TextStyle(
              fontFamily: "acme",
              color: Colors.grey[50],
            ),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                label: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "acme",
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    newPlaylistName = textController.text.trim();
                  }
                  List<Songs> newPlaylistSongs =
                      playlistBox.get(playlistname)!.toList().cast<Songs>();
                  await playlistBox.put(newPlaylistName, newPlaylistSongs);
                  await playlistBox.delete(playlistname);
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                label: const Text(
                  'Rename',
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: "acme",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

//Playlist---->Delete

showPlaylistDeleteAlertBox(BuildContext context, playlistname) {
  final playlistBox = getPlaylistBox();
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: const Color.fromARGB(255, 41, 40, 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: const Text(
        'Delete Playlist',
        style: TextStyle(
          fontFamily: "acme",
          color: Colors.white,
        ),
      ),
      content: Text(
        'Are you sure you want to delete $playlistname',
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontFamily: "acme",
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.red,
              ),
              label: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "acme",
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                playlistBox.delete(playlistname);
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.check,
                color: Colors.green,
              ),
              label: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: "acme",
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

//playlist---->add to playlist(now playing)
showAddtoplaylistBox(BuildContext context, String id) {
  Box<List> playlistBox = getPlaylistBox();
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: const Color.fromARGB(255, 41, 40, 40),
      contentPadding: const EdgeInsets.only(left: 25, right: 25),
      title: const Center(
        child: Text(
          "Add to Playlist",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "acme",
          ),
        ),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: SizedBox(
        height: 110,
        width: 200,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 5),
              Center(
                //List playlist in alertBox
                child: ValueListenableBuilder(
                  valueListenable: playlistBox.listenable(),
                  builder: (context, value, child) {
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
                        return TextButton(
                          child: Text(
                            playlistName,
                            style: const TextStyle(
                                color: Colors.blueGrey, fontSize: 16),
                          ),
                          onPressed: () {
                            Box<Songs> songBox = getSongBox();
                            Box<List> playlistBox = getPlaylistBox();
                            List<Songs> sortedSongs =
                                songBox.values.toList().cast<Songs>();
                            List<Songs> playlistSongsList = playlistBox
                                .get(playlistName)!
                                .toList()
                                .cast<Songs>();
                            Songs currentsong = sortedSongs
                                .firstWhere((song) => song.id.contains(id));
                            if (playlistSongsList
                                .where(
                                    (song) => song.id.contains(currentsong.id))
                                .isEmpty) {
                              playlistSongsList.add(currentsong);
                              playlistBox.put(playlistName, playlistSongsList);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                    '${currentsong.title} added to $playlistName '),
                                backgroundColor: Colors.green,
                                duration: const Duration(seconds: 2),
                                elevation: 10,
                              ));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                    '${currentsong.title} already exist in the list'),
                                backgroundColor: Colors.red,
                                duration: const Duration(seconds: 2),
                                elevation: 10,
                              ));
                            }
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Create Playlist',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontFamily: "acme",
                )),
            IconButton(
              onPressed: () {
                showPlaylistAddAlertBox(context);
              },
              icon: const Icon(
                Icons.playlist_add,
                color: Colors.green,
                size: 30,
              ),
            )
          ],
        )
      ],
    ),
  );
}
