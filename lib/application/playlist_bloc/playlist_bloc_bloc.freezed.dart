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
    required TResult Function() getPlaylistNames,
    required TResult Function(String playlistName) getPlaylistSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylistNames,
    TResult? Function(String playlistName)? getPlaylistSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylistNames,
    TResult Function(String playlistName)? getPlaylistSongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistListNames value) getPlaylistNames,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistListNames value)? getPlaylistNames,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistListNames value)? getPlaylistNames,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
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
abstract class _$$GetPlaylistListNamesCopyWith<$Res> {
  factory _$$GetPlaylistListNamesCopyWith(_$GetPlaylistListNames value,
          $Res Function(_$GetPlaylistListNames) then) =
      __$$GetPlaylistListNamesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlaylistListNamesCopyWithImpl<$Res>
    extends _$PlaylistBlocEventCopyWithImpl<$Res, _$GetPlaylistListNames>
    implements _$$GetPlaylistListNamesCopyWith<$Res> {
  __$$GetPlaylistListNamesCopyWithImpl(_$GetPlaylistListNames _value,
      $Res Function(_$GetPlaylistListNames) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlaylistListNames implements GetPlaylistListNames {
  _$GetPlaylistListNames();

  @override
  String toString() {
    return 'PlaylistBlocEvent.getPlaylistNames()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlaylistListNames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylistNames,
    required TResult Function(String playlistName) getPlaylistSongs,
  }) {
    return getPlaylistNames();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylistNames,
    TResult? Function(String playlistName)? getPlaylistSongs,
  }) {
    return getPlaylistNames?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylistNames,
    TResult Function(String playlistName)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (getPlaylistNames != null) {
      return getPlaylistNames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistListNames value) getPlaylistNames,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
  }) {
    return getPlaylistNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistListNames value)? getPlaylistNames,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
  }) {
    return getPlaylistNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistListNames value)? getPlaylistNames,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (getPlaylistNames != null) {
      return getPlaylistNames(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistListNames implements PlaylistBlocEvent {
  factory GetPlaylistListNames() = _$GetPlaylistListNames;
}

/// @nodoc
abstract class _$$GetPlaylistSongsCopyWith<$Res> {
  factory _$$GetPlaylistSongsCopyWith(
          _$GetPlaylistSongs value, $Res Function(_$GetPlaylistSongs) then) =
      __$$GetPlaylistSongsCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistName});
}

/// @nodoc
class __$$GetPlaylistSongsCopyWithImpl<$Res>
    extends _$PlaylistBlocEventCopyWithImpl<$Res, _$GetPlaylistSongs>
    implements _$$GetPlaylistSongsCopyWith<$Res> {
  __$$GetPlaylistSongsCopyWithImpl(
      _$GetPlaylistSongs _value, $Res Function(_$GetPlaylistSongs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
  }) {
    return _then(_$GetPlaylistSongs(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPlaylistSongs implements GetPlaylistSongs {
  _$GetPlaylistSongs({required this.playlistName});

  @override
  final String playlistName;

  @override
  String toString() {
    return 'PlaylistBlocEvent.getPlaylistSongs(playlistName: $playlistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaylistSongs &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaylistSongsCopyWith<_$GetPlaylistSongs> get copyWith =>
      __$$GetPlaylistSongsCopyWithImpl<_$GetPlaylistSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylistNames,
    required TResult Function(String playlistName) getPlaylistSongs,
  }) {
    return getPlaylistSongs(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylistNames,
    TResult? Function(String playlistName)? getPlaylistSongs,
  }) {
    return getPlaylistSongs?.call(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylistNames,
    TResult Function(String playlistName)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (getPlaylistSongs != null) {
      return getPlaylistSongs(playlistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistListNames value) getPlaylistNames,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
  }) {
    return getPlaylistSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistListNames value)? getPlaylistNames,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
  }) {
    return getPlaylistSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistListNames value)? getPlaylistNames,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    required TResult orElse(),
  }) {
    if (getPlaylistSongs != null) {
      return getPlaylistSongs(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistSongs implements PlaylistBlocEvent {
  factory GetPlaylistSongs({required final String playlistName}) =
      _$GetPlaylistSongs;

  String get playlistName;
  @JsonKey(ignore: true)
  _$$GetPlaylistSongsCopyWith<_$GetPlaylistSongs> get copyWith =>
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
