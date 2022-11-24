// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenFavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavoriteList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoriteList value) getFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavoriteList value)? getFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoriteList value)? getFavoriteList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenFavoriteEventCopyWith<$Res> {
  factory $ScreenFavoriteEventCopyWith(
          ScreenFavoriteEvent value, $Res Function(ScreenFavoriteEvent) then) =
      _$ScreenFavoriteEventCopyWithImpl<$Res, ScreenFavoriteEvent>;
}

/// @nodoc
class _$ScreenFavoriteEventCopyWithImpl<$Res, $Val extends ScreenFavoriteEvent>
    implements $ScreenFavoriteEventCopyWith<$Res> {
  _$ScreenFavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFavoriteListCopyWith<$Res> {
  factory _$$GetFavoriteListCopyWith(
          _$GetFavoriteList value, $Res Function(_$GetFavoriteList) then) =
      __$$GetFavoriteListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoriteListCopyWithImpl<$Res>
    extends _$ScreenFavoriteEventCopyWithImpl<$Res, _$GetFavoriteList>
    implements _$$GetFavoriteListCopyWith<$Res> {
  __$$GetFavoriteListCopyWithImpl(
      _$GetFavoriteList _value, $Res Function(_$GetFavoriteList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavoriteList implements GetFavoriteList {
  const _$GetFavoriteList();

  @override
  String toString() {
    return 'ScreenFavoriteEvent.getFavoriteList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoriteList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavoriteList,
  }) {
    return getFavoriteList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavoriteList,
  }) {
    return getFavoriteList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavoriteList,
    required TResult orElse(),
  }) {
    if (getFavoriteList != null) {
      return getFavoriteList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoriteList value) getFavoriteList,
  }) {
    return getFavoriteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavoriteList value)? getFavoriteList,
  }) {
    return getFavoriteList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoriteList value)? getFavoriteList,
    required TResult orElse(),
  }) {
    if (getFavoriteList != null) {
      return getFavoriteList(this);
    }
    return orElse();
  }
}

abstract class GetFavoriteList implements ScreenFavoriteEvent {
  const factory GetFavoriteList() = _$GetFavoriteList;
}

/// @nodoc
mixin _$ScreenFavoriteState {
  List<Songs> get favSongList => throw _privateConstructorUsedError;
  int get favSongListLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenFavoriteStateCopyWith<ScreenFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenFavoriteStateCopyWith<$Res> {
  factory $ScreenFavoriteStateCopyWith(
          ScreenFavoriteState value, $Res Function(ScreenFavoriteState) then) =
      _$ScreenFavoriteStateCopyWithImpl<$Res, ScreenFavoriteState>;
  @useResult
  $Res call({List<Songs> favSongList, int favSongListLength});
}

/// @nodoc
class _$ScreenFavoriteStateCopyWithImpl<$Res, $Val extends ScreenFavoriteState>
    implements $ScreenFavoriteStateCopyWith<$Res> {
  _$ScreenFavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favSongList = null,
    Object? favSongListLength = null,
  }) {
    return _then(_value.copyWith(
      favSongList: null == favSongList
          ? _value.favSongList
          : favSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      favSongListLength: null == favSongListLength
          ? _value.favSongListLength
          : favSongListLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenFavoriteStateCopyWith<$Res>
    implements $ScreenFavoriteStateCopyWith<$Res> {
  factory _$$_ScreenFavoriteStateCopyWith(_$_ScreenFavoriteState value,
          $Res Function(_$_ScreenFavoriteState) then) =
      __$$_ScreenFavoriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> favSongList, int favSongListLength});
}

/// @nodoc
class __$$_ScreenFavoriteStateCopyWithImpl<$Res>
    extends _$ScreenFavoriteStateCopyWithImpl<$Res, _$_ScreenFavoriteState>
    implements _$$_ScreenFavoriteStateCopyWith<$Res> {
  __$$_ScreenFavoriteStateCopyWithImpl(_$_ScreenFavoriteState _value,
      $Res Function(_$_ScreenFavoriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favSongList = null,
    Object? favSongListLength = null,
  }) {
    return _then(_$_ScreenFavoriteState(
      favSongList: null == favSongList
          ? _value._favSongList
          : favSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      favSongListLength: null == favSongListLength
          ? _value.favSongListLength
          : favSongListLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScreenFavoriteState implements _ScreenFavoriteState {
  const _$_ScreenFavoriteState(
      {required final List<Songs> favSongList, required this.favSongListLength})
      : _favSongList = favSongList;

  final List<Songs> _favSongList;
  @override
  List<Songs> get favSongList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favSongList);
  }

  @override
  final int favSongListLength;

  @override
  String toString() {
    return 'ScreenFavoriteState(favSongList: $favSongList, favSongListLength: $favSongListLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenFavoriteState &&
            const DeepCollectionEquality()
                .equals(other._favSongList, _favSongList) &&
            (identical(other.favSongListLength, favSongListLength) ||
                other.favSongListLength == favSongListLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_favSongList), favSongListLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenFavoriteStateCopyWith<_$_ScreenFavoriteState> get copyWith =>
      __$$_ScreenFavoriteStateCopyWithImpl<_$_ScreenFavoriteState>(
          this, _$identity);
}

abstract class _ScreenFavoriteState implements ScreenFavoriteState {
  const factory _ScreenFavoriteState(
      {required final List<Songs> favSongList,
      required final int favSongListLength}) = _$_ScreenFavoriteState;

  @override
  List<Songs> get favSongList;
  @override
  int get favSongListLength;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenFavoriteStateCopyWith<_$_ScreenFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
