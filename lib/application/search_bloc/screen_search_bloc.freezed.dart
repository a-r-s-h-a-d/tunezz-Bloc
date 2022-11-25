// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialStateEvent,
    required TResult Function(String enteredSong) searchStateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialStateEvent,
    TResult? Function(String enteredSong)? searchStateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialStateEvent,
    TResult Function(String enteredSong)? searchStateEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStateEvent value) initialStateEvent,
    required TResult Function(SearchStateEvent value) searchStateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStateEvent value)? initialStateEvent,
    TResult? Function(SearchStateEvent value)? searchStateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStateEvent value)? initialStateEvent,
    TResult Function(SearchStateEvent value)? searchStateEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSearchEventCopyWith<$Res> {
  factory $ScreenSearchEventCopyWith(
          ScreenSearchEvent value, $Res Function(ScreenSearchEvent) then) =
      _$ScreenSearchEventCopyWithImpl<$Res, ScreenSearchEvent>;
}

/// @nodoc
class _$ScreenSearchEventCopyWithImpl<$Res, $Val extends ScreenSearchEvent>
    implements $ScreenSearchEventCopyWith<$Res> {
  _$ScreenSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateEventCopyWith<$Res> {
  factory _$$InitialStateEventCopyWith(
          _$InitialStateEvent value, $Res Function(_$InitialStateEvent) then) =
      __$$InitialStateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateEventCopyWithImpl<$Res>
    extends _$ScreenSearchEventCopyWithImpl<$Res, _$InitialStateEvent>
    implements _$$InitialStateEventCopyWith<$Res> {
  __$$InitialStateEventCopyWithImpl(
      _$InitialStateEvent _value, $Res Function(_$InitialStateEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateEvent implements InitialStateEvent {
  const _$InitialStateEvent();

  @override
  String toString() {
    return 'ScreenSearchEvent.initialStateEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialStateEvent,
    required TResult Function(String enteredSong) searchStateEvent,
  }) {
    return initialStateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialStateEvent,
    TResult? Function(String enteredSong)? searchStateEvent,
  }) {
    return initialStateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialStateEvent,
    TResult Function(String enteredSong)? searchStateEvent,
    required TResult orElse(),
  }) {
    if (initialStateEvent != null) {
      return initialStateEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStateEvent value) initialStateEvent,
    required TResult Function(SearchStateEvent value) searchStateEvent,
  }) {
    return initialStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStateEvent value)? initialStateEvent,
    TResult? Function(SearchStateEvent value)? searchStateEvent,
  }) {
    return initialStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStateEvent value)? initialStateEvent,
    TResult Function(SearchStateEvent value)? searchStateEvent,
    required TResult orElse(),
  }) {
    if (initialStateEvent != null) {
      return initialStateEvent(this);
    }
    return orElse();
  }
}

abstract class InitialStateEvent implements ScreenSearchEvent {
  const factory InitialStateEvent() = _$InitialStateEvent;
}

/// @nodoc
abstract class _$$SearchStateEventCopyWith<$Res> {
  factory _$$SearchStateEventCopyWith(
          _$SearchStateEvent value, $Res Function(_$SearchStateEvent) then) =
      __$$SearchStateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String enteredSong});
}

/// @nodoc
class __$$SearchStateEventCopyWithImpl<$Res>
    extends _$ScreenSearchEventCopyWithImpl<$Res, _$SearchStateEvent>
    implements _$$SearchStateEventCopyWith<$Res> {
  __$$SearchStateEventCopyWithImpl(
      _$SearchStateEvent _value, $Res Function(_$SearchStateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enteredSong = null,
  }) {
    return _then(_$SearchStateEvent(
      enteredSong: null == enteredSong
          ? _value.enteredSong
          : enteredSong // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStateEvent implements SearchStateEvent {
  _$SearchStateEvent({required this.enteredSong});

  @override
  final String enteredSong;

  @override
  String toString() {
    return 'ScreenSearchEvent.searchStateEvent(enteredSong: $enteredSong)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateEvent &&
            (identical(other.enteredSong, enteredSong) ||
                other.enteredSong == enteredSong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enteredSong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateEventCopyWith<_$SearchStateEvent> get copyWith =>
      __$$SearchStateEventCopyWithImpl<_$SearchStateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialStateEvent,
    required TResult Function(String enteredSong) searchStateEvent,
  }) {
    return searchStateEvent(enteredSong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialStateEvent,
    TResult? Function(String enteredSong)? searchStateEvent,
  }) {
    return searchStateEvent?.call(enteredSong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialStateEvent,
    TResult Function(String enteredSong)? searchStateEvent,
    required TResult orElse(),
  }) {
    if (searchStateEvent != null) {
      return searchStateEvent(enteredSong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStateEvent value) initialStateEvent,
    required TResult Function(SearchStateEvent value) searchStateEvent,
  }) {
    return searchStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStateEvent value)? initialStateEvent,
    TResult? Function(SearchStateEvent value)? searchStateEvent,
  }) {
    return searchStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStateEvent value)? initialStateEvent,
    TResult Function(SearchStateEvent value)? searchStateEvent,
    required TResult orElse(),
  }) {
    if (searchStateEvent != null) {
      return searchStateEvent(this);
    }
    return orElse();
  }
}

abstract class SearchStateEvent implements ScreenSearchEvent {
  factory SearchStateEvent({required final String enteredSong}) =
      _$SearchStateEvent;

  String get enteredSong;
  @JsonKey(ignore: true)
  _$$SearchStateEventCopyWith<_$SearchStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScreenSearchState {
  List<Songs> get allSongs => throw _privateConstructorUsedError;
  List<Songs> get searchfoundSongs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenSearchStateCopyWith<ScreenSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSearchStateCopyWith<$Res> {
  factory $ScreenSearchStateCopyWith(
          ScreenSearchState value, $Res Function(ScreenSearchState) then) =
      _$ScreenSearchStateCopyWithImpl<$Res, ScreenSearchState>;
  @useResult
  $Res call({List<Songs> allSongs, List<Songs> searchfoundSongs});
}

/// @nodoc
class _$ScreenSearchStateCopyWithImpl<$Res, $Val extends ScreenSearchState>
    implements $ScreenSearchStateCopyWith<$Res> {
  _$ScreenSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allSongs = null,
    Object? searchfoundSongs = null,
  }) {
    return _then(_value.copyWith(
      allSongs: null == allSongs
          ? _value.allSongs
          : allSongs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      searchfoundSongs: null == searchfoundSongs
          ? _value.searchfoundSongs
          : searchfoundSongs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenSearchStateCopyWith<$Res>
    implements $ScreenSearchStateCopyWith<$Res> {
  factory _$$_ScreenSearchStateCopyWith(_$_ScreenSearchState value,
          $Res Function(_$_ScreenSearchState) then) =
      __$$_ScreenSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> allSongs, List<Songs> searchfoundSongs});
}

/// @nodoc
class __$$_ScreenSearchStateCopyWithImpl<$Res>
    extends _$ScreenSearchStateCopyWithImpl<$Res, _$_ScreenSearchState>
    implements _$$_ScreenSearchStateCopyWith<$Res> {
  __$$_ScreenSearchStateCopyWithImpl(
      _$_ScreenSearchState _value, $Res Function(_$_ScreenSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allSongs = null,
    Object? searchfoundSongs = null,
  }) {
    return _then(_$_ScreenSearchState(
      allSongs: null == allSongs
          ? _value._allSongs
          : allSongs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      searchfoundSongs: null == searchfoundSongs
          ? _value._searchfoundSongs
          : searchfoundSongs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ));
  }
}

/// @nodoc

class _$_ScreenSearchState implements _ScreenSearchState {
  const _$_ScreenSearchState(
      {required final List<Songs> allSongs,
      required final List<Songs> searchfoundSongs})
      : _allSongs = allSongs,
        _searchfoundSongs = searchfoundSongs;

  final List<Songs> _allSongs;
  @override
  List<Songs> get allSongs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allSongs);
  }

  final List<Songs> _searchfoundSongs;
  @override
  List<Songs> get searchfoundSongs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchfoundSongs);
  }

  @override
  String toString() {
    return 'ScreenSearchState(allSongs: $allSongs, searchfoundSongs: $searchfoundSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenSearchState &&
            const DeepCollectionEquality().equals(other._allSongs, _allSongs) &&
            const DeepCollectionEquality()
                .equals(other._searchfoundSongs, _searchfoundSongs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allSongs),
      const DeepCollectionEquality().hash(_searchfoundSongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenSearchStateCopyWith<_$_ScreenSearchState> get copyWith =>
      __$$_ScreenSearchStateCopyWithImpl<_$_ScreenSearchState>(
          this, _$identity);
}

abstract class _ScreenSearchState implements ScreenSearchState {
  const factory _ScreenSearchState(
      {required final List<Songs> allSongs,
      required final List<Songs> searchfoundSongs}) = _$_ScreenSearchState;

  @override
  List<Songs> get allSongs;
  @override
  List<Songs> get searchfoundSongs;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenSearchStateCopyWith<_$_ScreenSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
