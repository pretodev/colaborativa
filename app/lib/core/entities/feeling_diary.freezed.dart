// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feeling_diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeelingDiary {
  Feeling get feeling => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeelingDiaryCopyWith<FeelingDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingDiaryCopyWith<$Res> {
  factory $FeelingDiaryCopyWith(
          FeelingDiary value, $Res Function(FeelingDiary) then) =
      _$FeelingDiaryCopyWithImpl<$Res>;
  $Res call({Feeling feeling, String text});
}

/// @nodoc
class _$FeelingDiaryCopyWithImpl<$Res> implements $FeelingDiaryCopyWith<$Res> {
  _$FeelingDiaryCopyWithImpl(this._value, this._then);

  final FeelingDiary _value;
  // ignore: unused_field
  final $Res Function(FeelingDiary) _then;

  @override
  $Res call({
    Object? feeling = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      feeling: feeling == freezed
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as Feeling,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FeelingDiaryCopyWith<$Res>
    implements $FeelingDiaryCopyWith<$Res> {
  factory _$$_FeelingDiaryCopyWith(
          _$_FeelingDiary value, $Res Function(_$_FeelingDiary) then) =
      __$$_FeelingDiaryCopyWithImpl<$Res>;
  @override
  $Res call({Feeling feeling, String text});
}

/// @nodoc
class __$$_FeelingDiaryCopyWithImpl<$Res>
    extends _$FeelingDiaryCopyWithImpl<$Res>
    implements _$$_FeelingDiaryCopyWith<$Res> {
  __$$_FeelingDiaryCopyWithImpl(
      _$_FeelingDiary _value, $Res Function(_$_FeelingDiary) _then)
      : super(_value, (v) => _then(v as _$_FeelingDiary));

  @override
  _$_FeelingDiary get _value => super._value as _$_FeelingDiary;

  @override
  $Res call({
    Object? feeling = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_FeelingDiary(
      feeling: feeling == freezed
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as Feeling,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FeelingDiary extends _FeelingDiary {
  const _$_FeelingDiary({required this.feeling, required this.text})
      : super._();

  @override
  final Feeling feeling;
  @override
  final String text;

  @override
  String toString() {
    return 'FeelingDiary(feeling: $feeling, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelingDiary &&
            const DeepCollectionEquality().equals(other.feeling, feeling) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feeling),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_FeelingDiaryCopyWith<_$_FeelingDiary> get copyWith =>
      __$$_FeelingDiaryCopyWithImpl<_$_FeelingDiary>(this, _$identity);
}

abstract class _FeelingDiary extends FeelingDiary {
  const factory _FeelingDiary(
      {required final Feeling feeling,
      required final String text}) = _$_FeelingDiary;
  const _FeelingDiary._() : super._();

  @override
  Feeling get feeling => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingDiaryCopyWith<_$_FeelingDiary> get copyWith =>
      throw _privateConstructorUsedError;
}
