// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emitter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Emitter {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmitterCopyWith<Emitter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmitterCopyWith<$Res> {
  factory $EmitterCopyWith(Emitter value, $Res Function(Emitter) then) =
      _$EmitterCopyWithImpl<$Res>;
  $Res call({String id, String name, String? photoUrl});
}

/// @nodoc
class _$EmitterCopyWithImpl<$Res> implements $EmitterCopyWith<$Res> {
  _$EmitterCopyWithImpl(this._value, this._then);

  final Emitter _value;
  // ignore: unused_field
  final $Res Function(Emitter) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EmitterCopyWith<$Res> implements $EmitterCopyWith<$Res> {
  factory _$$_EmitterCopyWith(
          _$_Emitter value, $Res Function(_$_Emitter) then) =
      __$$_EmitterCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? photoUrl});
}

/// @nodoc
class __$$_EmitterCopyWithImpl<$Res> extends _$EmitterCopyWithImpl<$Res>
    implements _$$_EmitterCopyWith<$Res> {
  __$$_EmitterCopyWithImpl(_$_Emitter _value, $Res Function(_$_Emitter) _then)
      : super(_value, (v) => _then(v as _$_Emitter));

  @override
  _$_Emitter get _value => super._value as _$_Emitter;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_Emitter(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Emitter extends _Emitter {
  const _$_Emitter({required this.id, required this.name, this.photoUrl})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'Emitter(id: $id, name: $name, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emitter &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$$_EmitterCopyWith<_$_Emitter> get copyWith =>
      __$$_EmitterCopyWithImpl<_$_Emitter>(this, _$identity);
}

abstract class _Emitter extends Emitter {
  const factory _Emitter(
      {required final String id,
      required final String name,
      final String? photoUrl}) = _$_Emitter;
  const _Emitter._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get photoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmitterCopyWith<_$_Emitter> get copyWith =>
      throw _privateConstructorUsedError;
}
