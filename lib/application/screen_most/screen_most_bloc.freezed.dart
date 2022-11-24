// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_most_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenMostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMostSongList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMostSongList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMostSongList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMostSongList value) getMostSongList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMostSongList value)? getMostSongList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMostSongList value)? getMostSongList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenMostEventCopyWith<$Res> {
  factory $ScreenMostEventCopyWith(
          ScreenMostEvent value, $Res Function(ScreenMostEvent) then) =
      _$ScreenMostEventCopyWithImpl<$Res, ScreenMostEvent>;
}

/// @nodoc
class _$ScreenMostEventCopyWithImpl<$Res, $Val extends ScreenMostEvent>
    implements $ScreenMostEventCopyWith<$Res> {
  _$ScreenMostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMostSongListCopyWith<$Res> {
  factory _$$GetMostSongListCopyWith(
          _$GetMostSongList value, $Res Function(_$GetMostSongList) then) =
      __$$GetMostSongListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMostSongListCopyWithImpl<$Res>
    extends _$ScreenMostEventCopyWithImpl<$Res, _$GetMostSongList>
    implements _$$GetMostSongListCopyWith<$Res> {
  __$$GetMostSongListCopyWithImpl(
      _$GetMostSongList _value, $Res Function(_$GetMostSongList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMostSongList implements GetMostSongList {
  const _$GetMostSongList();

  @override
  String toString() {
    return 'ScreenMostEvent.getMostSongList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMostSongList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMostSongList,
  }) {
    return getMostSongList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMostSongList,
  }) {
    return getMostSongList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMostSongList,
    required TResult orElse(),
  }) {
    if (getMostSongList != null) {
      return getMostSongList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMostSongList value) getMostSongList,
  }) {
    return getMostSongList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMostSongList value)? getMostSongList,
  }) {
    return getMostSongList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMostSongList value)? getMostSongList,
    required TResult orElse(),
  }) {
    if (getMostSongList != null) {
      return getMostSongList(this);
    }
    return orElse();
  }
}

abstract class GetMostSongList implements ScreenMostEvent {
  const factory GetMostSongList() = _$GetMostSongList;
}

/// @nodoc
mixin _$ScreenMostState {
  List<Songs> get mostSongList => throw _privateConstructorUsedError;
  int get mostSongListLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenMostStateCopyWith<ScreenMostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenMostStateCopyWith<$Res> {
  factory $ScreenMostStateCopyWith(
          ScreenMostState value, $Res Function(ScreenMostState) then) =
      _$ScreenMostStateCopyWithImpl<$Res, ScreenMostState>;
  @useResult
  $Res call({List<Songs> mostSongList, int mostSongListLength});
}

/// @nodoc
class _$ScreenMostStateCopyWithImpl<$Res, $Val extends ScreenMostState>
    implements $ScreenMostStateCopyWith<$Res> {
  _$ScreenMostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostSongList = null,
    Object? mostSongListLength = null,
  }) {
    return _then(_value.copyWith(
      mostSongList: null == mostSongList
          ? _value.mostSongList
          : mostSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      mostSongListLength: null == mostSongListLength
          ? _value.mostSongListLength
          : mostSongListLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenMostStateCopyWith<$Res>
    implements $ScreenMostStateCopyWith<$Res> {
  factory _$$_ScreenMostStateCopyWith(
          _$_ScreenMostState value, $Res Function(_$_ScreenMostState) then) =
      __$$_ScreenMostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> mostSongList, int mostSongListLength});
}

/// @nodoc
class __$$_ScreenMostStateCopyWithImpl<$Res>
    extends _$ScreenMostStateCopyWithImpl<$Res, _$_ScreenMostState>
    implements _$$_ScreenMostStateCopyWith<$Res> {
  __$$_ScreenMostStateCopyWithImpl(
      _$_ScreenMostState _value, $Res Function(_$_ScreenMostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostSongList = null,
    Object? mostSongListLength = null,
  }) {
    return _then(_$_ScreenMostState(
      mostSongList: null == mostSongList
          ? _value._mostSongList
          : mostSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      mostSongListLength: null == mostSongListLength
          ? _value.mostSongListLength
          : mostSongListLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScreenMostState implements _ScreenMostState {
  const _$_ScreenMostState(
      {required final List<Songs> mostSongList,
      required this.mostSongListLength})
      : _mostSongList = mostSongList;

  final List<Songs> _mostSongList;
  @override
  List<Songs> get mostSongList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostSongList);
  }

  @override
  final int mostSongListLength;

  @override
  String toString() {
    return 'ScreenMostState(mostSongList: $mostSongList, mostSongListLength: $mostSongListLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenMostState &&
            const DeepCollectionEquality()
                .equals(other._mostSongList, _mostSongList) &&
            (identical(other.mostSongListLength, mostSongListLength) ||
                other.mostSongListLength == mostSongListLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_mostSongList), mostSongListLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenMostStateCopyWith<_$_ScreenMostState> get copyWith =>
      __$$_ScreenMostStateCopyWithImpl<_$_ScreenMostState>(this, _$identity);
}

abstract class _ScreenMostState implements ScreenMostState {
  const factory _ScreenMostState(
      {required final List<Songs> mostSongList,
      required final int mostSongListLength}) = _$_ScreenMostState;

  @override
  List<Songs> get mostSongList;
  @override
  int get mostSongListLength;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenMostStateCopyWith<_$_ScreenMostState> get copyWith =>
      throw _privateConstructorUsedError;
}
