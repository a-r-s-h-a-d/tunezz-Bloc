import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/application/music_bloc/screen_music_bloc.dart';
import 'package:tunezz_pro/application/screen_favorite/screen_favorite_bloc.dart';
import 'package:tunezz_pro/application/screen_most/screen_most_bloc.dart';
import 'package:tunezz_pro/application/screen_recent/screen_recent_bloc.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/presentations/screens/screen_splash/screen_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(SongsAdapter());
  }
  await Hive.openBox<Songs>("Songs");
  await Hive.openBox<List>("Playlist");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ScreenMusicBloc()),
        //BlocProvider(create: (context) => PlaylistBlocBloc()),
        BlocProvider(create: (context) => ScreenFavoriteBloc()),
        BlocProvider(create: (context) => ScreenRecentBloc()),
        BlocProvider(create: (context) => ScreenMostBloc()),
      ],
      child: MaterialApp(
        title: 'tunezz',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          canvasColor: Colors.transparent,
          primarySwatch: Colors.grey,
        ),
        home: ScreenSplash(),
      ),
    );
  }
}
