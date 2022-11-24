// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlist_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPlaylistName, String newPlaylistName)
        renamePlaylist,
    required TResult Function() playlistListNames,
    required TResult Function(String playlistName) songList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPlaylistName, String newPlaylistName)?
        renamePlaylist,
    TResult? Function()? playlistListNames,
    TResult? Function(String playlistName)? songList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPlaylistName, String newPlaylistName)?
        renamePlaylist,
    TResult Function()? playlistListNames,
    TResult Function(String playlistName)? songList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RenamePlaylist value) renamePlaylist,
    required TResult Function(PlaylistListNames value) playlistListNames,
    required TResult Function(SongList value) songList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RenamePlaylist value)? renamePlaylist,
    TResult? Function(PlaylistListNames value)? playlistListNames,
    TResult? Function(SongList value)? songList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RenamePlaylist value)? renamePlaylist,
    TResult Function(PlaylistListNames value)? playlistListNames,
    TResult Function(SongList value)? songList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistBlocEventCopyWith<$Res> {
  factory $PlaylistBlocEventCopyWith(
          PlaylistBlocEvent value, $Res Function(PlaylistBlocEvent) then) =
      _$PlaylistBlocEventCopyWithImpl<$Res, PlaylistBlocEvent>;
}

/// @nodoc
class _$PlaylistBlocEventCopyWithImpl<$Res, $Val extends PlaylistBlocEvent>
    implements $PlaylistBlocEventCopyWith<$Res> {
  _$PlaylistBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RenamePlaylistCopyWith<$Res> {
  factory _$$RenamePlaylistCopyWith(
          _$RenamePlaylist value, $Res Function(_$RenamePlaylist) then) =
      __$$RenamePlaylistCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPlaylistName, String newPlaylistName});
}

/// @nodoc
class __$$RenamePlaylistCopyWithImpl<$Res>
    extends _$PlaylistBlocEventCopyWithImpl<$Res, _$RenamePlaylist>
    implements _$$RenamePlaylistCopyWith<$Res> {
  __$$RenamePlaylistCopyWithImpl(
      _$RenamePlaylist _value, $Res Function(_$RenamePlaylist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPlaylistName = null,
    Object? newPlaylistName = null,
  }) {
    return _then(_$RenamePlaylist(
      oldPlaylistName: null == oldPlaylistName
          ? _value.oldPlaylistName
          : oldPlaylistName // ignore: cast_nullable_to_non_nullable
              as String,
      newPlaylistName: null == newPlaylistName
          ? _value.newPlaylistName
          : newPlaylistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RenamePlaylist implements RenamePlaylist {
  const _$RenamePlaylist(
      {required this.oldPlaylistName, required this.newPlaylistName});

  @override
  final String oldPlaylistName;
  @override
  final String newPlaylistName;

  @override
  String toString() {
    return 'PlaylistBlocEvent.renamePlaylist(oldPlaylistName: $oldPlaylistName, newPlaylistName: $newPlaylistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenamePlaylist &&
            (identical(other.oldPlaylistName, oldPlaylistName) ||
                other.oldPlaylistName == oldPlaylistName) &&
            (identical(other.newPlaylistName, newPlaylistName) ||
                other.newPlaylistName == newPlaylistName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPlaylistName, newPlaylistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenamePlaylistCopyWith<_$RenamePlaylist> get copyWith =>
      __$$RenamePlaylistCopyWithImpl<_$RenamePlaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPlaylistName, String newPlaylistName)
        renamePlaylist,
    required TResult Function() playlistListNames,
    required TResult Function(String playlistName) songList,
  }) {
    return renamePlaylist(oldPlaylistName, newPlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPlaylistName, String newPlaylistName)?
        renamePlaylist,
    TResult? Function()? playlistListNames,
    TResult? Function(String playlistName)? songList,
  }) {
    return renamePlaylist?.call(oldPlaylistName, newPlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPlaylistName, String newPlaylistName)?
        renamePlaylist,
    TResult Function()? playlistListNames,
    TResult Function(String playlistName)? songList,
    required TResult orElse(),
  }) {
    if (renamePlaylist != null) {
      return renamePlaylist(oldPlaylistName, newPlaylistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RenamePlaylist value) renamePlaylist,
    required TResult Function(PlaylistListNames value) playlistListNames,
    required TResult Function(SongList value) songList,
  }) {
    return renamePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RenamePlaylist value)? renamePlaylist,
    TResult? Function(PlaylistListNames value)? playlistListNames,
    TResult? Function(SongList value)? songList,
  }) {
    return renamePlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RenamePlaylist value)? renamePlaylist,
    TResult Function(PlaylistListNames value)? playlistListNames,
    TResult Function(SongList value)? songList,
    required TResult orElse(),
  }) {
    if (renamePlaylist != null) {
      return renamePlaylist(this);
    }
    return orElse();
  }
}

abstract class RenamePlaylist implements PlaylistBlocEvent {
  const factory RenamePlaylist(
      {required final String oldPlaylistName,
      required final String newPlaylistName}) = _$RenamePlaylist;

  String get oldPlaylistName;
  String get newPlaylistName;
  @JsonKey(ignore: true)
  _$$RenamePlaylistCopyWith<_$RenamePlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistListNamesCopyWith<$Res> {
  factory _$$PlaylistListNamesCopyWith(
          _$PlaylistListNames value, $Res Function(_$PlaylistListNames) then) =
      __$$PlaylistListNamesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaylistListNamesCopyWithImpl<$Res>
    extends _$PlaylistBlocEventCopyWithImpl<$Res, _$PlaylistListNames>
    implements _$$PlaylistListNamesCopyWith<$Res> {
  __$$PlaylistListNamesCopyWithImpl(
      _$PlaylistListNames _value, $Res Function(_$PlaylistListNames) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaylistListNames implements PlaylistListNames {
  _$PlaylistListNames();

  @override
  String toString() {
    return 'PlaylistBlocEvent.playlistListNames()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaylistListNames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPlaylistName, String newPlaylistName)
        renamePlaylist,
    required TResult Function() playlistListNames,
    required TResult Function(String playlistName) songList,
  }) {
    return playlistListNames();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPlaylistName, String newPlaylistName)?
        renamePlaylist,
    TResult? Function()? playlistListNames,
    TResult? Function(String playlistName)? songList,
  }) {
    return playlistListNames?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPlaylistName, String newPlaylistName)?
        renamePlaylist,
    TResult Function()? playlistListNames,
    TResult Function(String playlistName)? songList,
    required TResult orElse(),
  }) {
    if (playlistListNames != null) {
      return playlistListNames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RenamePlaylist value) renamePlaylist,
    required TResult Function(PlaylistListNames value) playlistListNames,
    required TResult Function(SongList value) songList,
  }) {
    return playlistListNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RenamePlaylist value)? renamePlaylist,
    TResult? Function(PlaylistListNames value)? playlistListNames,
    TResult? Function(SongList value)? songList,
  }) {
    return playlistListNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RenamePlaylist value)? renamePlaylist,
    TResult Function(PlaylistListNames value)? playlistListNames,
    TResult Function(SongList value)? songList,
    required TResult orElse(),
  }) {
    if (playlistListNames != null) {
      return playlistListNames(this);
    }
    return orElse();
  }
}

abstract class PlaylistListNames implements PlaylistBlocEvent {
  factory PlaylistListNames() = _$PlaylistListNames;
}

/// @nodoc
abstract class _$$SongListCopyWith<$Res> {
  factory _$$SongListCopyWith(
          _$SongList value, $Res Function(_$SongList) then) =
      __$$SongListCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistName});
}

/// @nodoc
class __$$SongListCopyWithImpl<$Res>
    extends _$PlaylistBlocEventCopyWithImpl<$Res, _$SongList>
    implements _$$SongListCopyWith<$Res> {
  __$$SongListCopyWithImpl(_$SongList _value, $Res Function(_$SongList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
  }) {
    return _then(_$SongList(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SongList implements SongList {
  _$SongList({required this.playlistName});

  @override
  final String playlistName;

  @override
  String toString() {
    return 'PlaylistBlocEvent.songList(playlistName: $playlistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongList &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongListCopyWith<_$SongList> get copyWith =>
      __$$SongListCopyWithImpl<_$SongList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPlaylistName, String newPlaylistName)
        renamePlaylist,
    required TResult Function() playlistListNames,
    required TResult Function(String playlistName) songList,
  }) {
    return songList(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPlaylistName, String newPlaylistName)?
        renamePlaylist,
    TResult? Function()? playlistListNames,
    TResult? Function(String playlistName)? songList,
  }) {
    return songList?.call(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPlaylistName, String newPlaylistName)?
        renamePlaylist,
    TResult Function()? playlistListNames,
    TResult Function(String playlistName)? songList,
    required TResult orElse(),
  }) {
    if (songList != null) {
      return songList(playlistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RenamePlaylist value) renamePlaylist,
    required TResult Function(PlaylistListNames value) playlistListNames,
    required TResult Function(SongList value) songList,
  }) {
    return songList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RenamePlaylist value)? renamePlaylist,
    TResult? Function(PlaylistListNames value)? playlistListNames,
    TResult? Function(SongList value)? songList,
  }) {
    return songList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RenamePlaylist value)? renamePlaylist,
    TResult Function(PlaylistListNames value)? playlistListNames,
    TResult Function(SongList value)? songList,
    required TResult orElse(),
  }) {
    if (songList != null) {
      return songList(this);
    }
    return orElse();
  }
}

abstract class SongList implements PlaylistBlocEvent {
  factory SongList({required final String playlistName}) = _$SongList;

  String get playlistName;
  @JsonKey(ignore: true)
  _$$SongListCopyWith<_$SongList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistBlocState {
  String get playlistName => throw _privateConstructorUsedError;
  List<Songs> get playlistSongList => throw _privateConstructorUsedError;
  List<dynamic> get playlistListNames => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistBlocStateCopyWith<PlaylistBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistBlocStateCopyWith<$Res> {
  factory $PlaylistBlocStateCopyWith(
          PlaylistBlocState value, $Res Function(PlaylistBlocState) then) =
      _$PlaylistBlocStateCopyWithImpl<$Res, PlaylistBlocState>;
  @useResult
  $Res call(
      {String playlistName,
      List<Songs> playlistSongList,
      List<dynamic> playlistListNames});
}

/// @nodoc
class _$PlaylistBlocStateCopyWithImpl<$Res, $Val extends PlaylistBlocState>
    implements $PlaylistBlocStateCopyWith<$Res> {
  _$PlaylistBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
    Object? playlistSongList = null,
    Object? playlistListNames = null,
  }) {
    return _then(_value.copyWith(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
      playlistSongList: null == playlistSongList
          ? _value.playlistSongList
          : playlistSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      playlistListNames: null == playlistListNames
          ? _value.playlistListNames
          : playlistListNames // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistBlocStateCopyWith<$Res>
    implements $PlaylistBlocStateCopyWith<$Res> {
  factory _$$_PlaylistBlocStateCopyWith(_$_PlaylistBlocState value,
          $Res Function(_$_PlaylistBlocState) then) =
      __$$_PlaylistBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String playlistName,
      List<Songs> playlistSongList,
      List<dynamic> playlistListNames});
}

/// @nodoc
class __$$_PlaylistBlocStateCopyWithImpl<$Res>
    extends _$PlaylistBlocStateCopyWithImpl<$Res, _$_PlaylistBlocState>
    implements _$$_PlaylistBlocStateCopyWith<$Res> {
  __$$_PlaylistBlocStateCopyWithImpl(
      _$_PlaylistBlocState _value, $Res Function(_$_PlaylistBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
    Object? playlistSongList = null,
    Object? playlistListNames = null,
  }) {
    return _then(_$_PlaylistBlocState(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
      playlistSongList: null == playlistSongList
          ? _value._playlistSongList
          : playlistSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      playlistListNames: null == playlistListNames
          ? _value._playlistListNames
          : playlistListNames // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_PlaylistBlocState implements _PlaylistBlocState {
  const _$_PlaylistBlocState(
      {required this.playlistName,
      required final List<Songs> playlistSongList,
      required final List<dynamic> playlistListNames})
      : _playlistSongList = playlistSongList,
        _playlistListNames = playlistListNames;

  @override
  final String playlistName;
  final List<Songs> _playlistSongList;
  @override
  List<Songs> get playlistSongList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistSongList);
  }

  final List<dynamic> _playlistListNames;
  @override
  List<dynamic> get playlistListNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistListNames);
  }

  @override
  String toString() {
    return 'PlaylistBlocState(playlistName: $playlistName, playlistSongList: $playlistSongList, playlistListNames: $playlistListNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistBlocState &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName) &&
            const DeepCollectionEquality()
                .equals(other._playlistSongList, _playlistSongList) &&
            const DeepCollectionEquality()
                .equals(other._playlistListNames, _playlistListNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      playlistName,
      const DeepCollectionEquality().hash(_playlistSongList),
      const DeepCollectionEquality().hash(_playlistListNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistBlocStateCopyWith<_$_PlaylistBlocState> get copyWith =>
      __$$_PlaylistBlocStateCopyWithImpl<_$_PlaylistBlocState>(
          this, _$identity);
}

abstract class _PlaylistBlocState implements PlaylistBlocState {
  const factory _PlaylistBlocState(
      {required final String playlistName,
      required final List<Songs> playlistSongList,
      required final List<dynamic> playlistListNames}) = _$_PlaylistBlocState;

  @override
  String get playlistName;
  @override
  List<Songs> get playlistSongList;
  @override
  List<dynamic> get playlistListNames;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistBlocStateCopyWith<_$_PlaylistBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
