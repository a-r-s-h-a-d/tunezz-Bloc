// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_music_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenMusicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenMusicEventCopyWith<$Res> {
  factory $ScreenMusicEventCopyWith(
          ScreenMusicEvent value, $Res Function(ScreenMusicEvent) then) =
      _$ScreenMusicEventCopyWithImpl<$Res, ScreenMusicEvent>;
}

/// @nodoc
class _$ScreenMusicEventCopyWithImpl<$Res, $Val extends ScreenMusicEvent>
    implements $ScreenMusicEventCopyWith<$Res> {
  _$ScreenMusicEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$ScreenMusicEventCopyWithImpl<$Res, _$_Initialize>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'ScreenMusicEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ScreenMusicEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
mixin _$ScreenMusicState {
  List<Songs> get songList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenMusicStateCopyWith<ScreenMusicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenMusicStateCopyWith<$Res> {
  factory $ScreenMusicStateCopyWith(
          ScreenMusicState value, $Res Function(ScreenMusicState) then) =
      _$ScreenMusicStateCopyWithImpl<$Res, ScreenMusicState>;
  @useResult
  $Res call({List<Songs> songList});
}

/// @nodoc
class _$ScreenMusicStateCopyWithImpl<$Res, $Val extends ScreenMusicState>
    implements $ScreenMusicStateCopyWith<$Res> {
  _$ScreenMusicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songList = null,
  }) {
    return _then(_value.copyWith(
      songList: null == songList
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenMusicStateCopyWith<$Res>
    implements $ScreenMusicStateCopyWith<$Res> {
  factory _$$_ScreenMusicStateCopyWith(
          _$_ScreenMusicState value, $Res Function(_$_ScreenMusicState) then) =
      __$$_ScreenMusicStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> songList});
}

/// @nodoc
class __$$_ScreenMusicStateCopyWithImpl<$Res>
    extends _$ScreenMusicStateCopyWithImpl<$Res, _$_ScreenMusicState>
    implements _$$_ScreenMusicStateCopyWith<$Res> {
  __$$_ScreenMusicStateCopyWithImpl(
      _$_ScreenMusicState _value, $Res Function(_$_ScreenMusicState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songList = null,
  }) {
    return _then(_$_ScreenMusicState(
      songList: null == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ));
  }
}

/// @nodoc

class _$_ScreenMusicState implements _ScreenMusicState {
  const _$_ScreenMusicState({required final List<Songs> songList})
      : _songList = songList;

  final List<Songs> _songList;
  @override
  List<Songs> get songList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songList);
  }

  @override
  String toString() {
    return 'ScreenMusicState(songList: $songList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenMusicState &&
            const DeepCollectionEquality().equals(other._songList, _songList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenMusicStateCopyWith<_$_ScreenMusicState> get copyWith =>
      __$$_ScreenMusicStateCopyWithImpl<_$_ScreenMusicState>(this, _$identity);
}

abstract class _ScreenMusicState implements ScreenMusicState {
  const factory _ScreenMusicState({required final List<Songs> songList}) =
      _$_ScreenMusicState;

  @override
  List<Songs> get songList;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenMusicStateCopyWith<_$_ScreenMusicState> get copyWith =>
      throw _privateConstructorUsedError;
}
