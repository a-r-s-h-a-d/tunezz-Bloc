// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_recent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenRecentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecentList value) getRecentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecentList value)? getRecentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecentList value)? getRecentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenRecentEventCopyWith<$Res> {
  factory $ScreenRecentEventCopyWith(
          ScreenRecentEvent value, $Res Function(ScreenRecentEvent) then) =
      _$ScreenRecentEventCopyWithImpl<$Res, ScreenRecentEvent>;
}

/// @nodoc
class _$ScreenRecentEventCopyWithImpl<$Res, $Val extends ScreenRecentEvent>
    implements $ScreenRecentEventCopyWith<$Res> {
  _$ScreenRecentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRecentListCopyWith<$Res> {
  factory _$$GetRecentListCopyWith(
          _$GetRecentList value, $Res Function(_$GetRecentList) then) =
      __$$GetRecentListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRecentListCopyWithImpl<$Res>
    extends _$ScreenRecentEventCopyWithImpl<$Res, _$GetRecentList>
    implements _$$GetRecentListCopyWith<$Res> {
  __$$GetRecentListCopyWithImpl(
      _$GetRecentList _value, $Res Function(_$GetRecentList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRecentList implements GetRecentList {
  const _$GetRecentList();

  @override
  String toString() {
    return 'ScreenRecentEvent.getRecentList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRecentList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecentList,
  }) {
    return getRecentList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecentList,
  }) {
    return getRecentList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecentList,
    required TResult orElse(),
  }) {
    if (getRecentList != null) {
      return getRecentList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecentList value) getRecentList,
  }) {
    return getRecentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecentList value)? getRecentList,
  }) {
    return getRecentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecentList value)? getRecentList,
    required TResult orElse(),
  }) {
    if (getRecentList != null) {
      return getRecentList(this);
    }
    return orElse();
  }
}

abstract class GetRecentList implements ScreenRecentEvent {
  const factory GetRecentList() = _$GetRecentList;
}

/// @nodoc
mixin _$ScreenRecentState {
  List<Songs> get recentSongList => throw _privateConstructorUsedError;
  int get recentSongListLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenRecentStateCopyWith<ScreenRecentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenRecentStateCopyWith<$Res> {
  factory $ScreenRecentStateCopyWith(
          ScreenRecentState value, $Res Function(ScreenRecentState) then) =
      _$ScreenRecentStateCopyWithImpl<$Res, ScreenRecentState>;
  @useResult
  $Res call({List<Songs> recentSongList, int recentSongListLength});
}

/// @nodoc
class _$ScreenRecentStateCopyWithImpl<$Res, $Val extends ScreenRecentState>
    implements $ScreenRecentStateCopyWith<$Res> {
  _$ScreenRecentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSongList = null,
    Object? recentSongListLength = null,
  }) {
    return _then(_value.copyWith(
      recentSongList: null == recentSongList
          ? _value.recentSongList
          : recentSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      recentSongListLength: null == recentSongListLength
          ? _value.recentSongListLength
          : recentSongListLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenRecentStateCopyWith<$Res>
    implements $ScreenRecentStateCopyWith<$Res> {
  factory _$$_ScreenRecentStateCopyWith(_$_ScreenRecentState value,
          $Res Function(_$_ScreenRecentState) then) =
      __$$_ScreenRecentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> recentSongList, int recentSongListLength});
}

/// @nodoc
class __$$_ScreenRecentStateCopyWithImpl<$Res>
    extends _$ScreenRecentStateCopyWithImpl<$Res, _$_ScreenRecentState>
    implements _$$_ScreenRecentStateCopyWith<$Res> {
  __$$_ScreenRecentStateCopyWithImpl(
      _$_ScreenRecentState _value, $Res Function(_$_ScreenRecentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSongList = null,
    Object? recentSongListLength = null,
  }) {
    return _then(_$_ScreenRecentState(
      recentSongList: null == recentSongList
          ? _value._recentSongList
          : recentSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      recentSongListLength: null == recentSongListLength
          ? _value.recentSongListLength
          : recentSongListLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScreenRecentState implements _ScreenRecentState {
  const _$_ScreenRecentState(
      {required final List<Songs> recentSongList,
      required this.recentSongListLength})
      : _recentSongList = recentSongList;

  final List<Songs> _recentSongList;
  @override
  List<Songs> get recentSongList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSongList);
  }

  @override
  final int recentSongListLength;

  @override
  String toString() {
    return 'ScreenRecentState(recentSongList: $recentSongList, recentSongListLength: $recentSongListLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenRecentState &&
            const DeepCollectionEquality()
                .equals(other._recentSongList, _recentSongList) &&
            (identical(other.recentSongListLength, recentSongListLength) ||
                other.recentSongListLength == recentSongListLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recentSongList),
      recentSongListLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenRecentStateCopyWith<_$_ScreenRecentState> get copyWith =>
      __$$_ScreenRecentStateCopyWithImpl<_$_ScreenRecentState>(
          this, _$identity);
}

abstract class _ScreenRecentState implements ScreenRecentState {
  const factory _ScreenRecentState(
      {required final List<Songs> recentSongList,
      required final int recentSongListLength}) = _$_ScreenRecentState;

  @override
  List<Songs> get recentSongList;
  @override
  int get recentSongListLength;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenRecentStateCopyWith<_$_ScreenRecentState> get copyWith =>
      throw _privateConstructorUsedError;
}
