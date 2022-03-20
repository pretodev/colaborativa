// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhonePreferencesTearOff {
  const _$PhonePreferencesTearOff();

  _PhonePreferences call(
      {required String verificationId,
      required String phoneNumber,
      required DateTime timestamp}) {
    return _PhonePreferences(
      verificationId: verificationId,
      phoneNumber: phoneNumber,
      timestamp: timestamp,
    );
  }
}

/// @nodoc
const $PhonePreferences = _$PhonePreferencesTearOff();

/// @nodoc
mixin _$PhonePreferences {
  String get verificationId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhonePreferencesCopyWith<PhonePreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhonePreferencesCopyWith<$Res> {
  factory $PhonePreferencesCopyWith(
          PhonePreferences value, $Res Function(PhonePreferences) then) =
      _$PhonePreferencesCopyWithImpl<$Res>;
  $Res call({String verificationId, String phoneNumber, DateTime timestamp});
}

/// @nodoc
class _$PhonePreferencesCopyWithImpl<$Res>
    implements $PhonePreferencesCopyWith<$Res> {
  _$PhonePreferencesCopyWithImpl(this._value, this._then);

  final PhonePreferences _value;
  // ignore: unused_field
  final $Res Function(PhonePreferences) _then;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? phoneNumber = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PhonePreferencesCopyWith<$Res>
    implements $PhonePreferencesCopyWith<$Res> {
  factory _$PhonePreferencesCopyWith(
          _PhonePreferences value, $Res Function(_PhonePreferences) then) =
      __$PhonePreferencesCopyWithImpl<$Res>;
  @override
  $Res call({String verificationId, String phoneNumber, DateTime timestamp});
}

/// @nodoc
class __$PhonePreferencesCopyWithImpl<$Res>
    extends _$PhonePreferencesCopyWithImpl<$Res>
    implements _$PhonePreferencesCopyWith<$Res> {
  __$PhonePreferencesCopyWithImpl(
      _PhonePreferences _value, $Res Function(_PhonePreferences) _then)
      : super(_value, (v) => _then(v as _PhonePreferences));

  @override
  _PhonePreferences get _value => super._value as _PhonePreferences;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? phoneNumber = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_PhonePreferences(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PhonePreferences extends _PhonePreferences {
  const _$_PhonePreferences(
      {required this.verificationId,
      required this.phoneNumber,
      required this.timestamp})
      : super._();

  @override
  final String verificationId;
  @override
  final String phoneNumber;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'PhonePreferences(verificationId: $verificationId, phoneNumber: $phoneNumber, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhonePreferences &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  _$PhonePreferencesCopyWith<_PhonePreferences> get copyWith =>
      __$PhonePreferencesCopyWithImpl<_PhonePreferences>(this, _$identity);
}

abstract class _PhonePreferences extends PhonePreferences {
  const factory _PhonePreferences(
      {required String verificationId,
      required String phoneNumber,
      required DateTime timestamp}) = _$_PhonePreferences;
  const _PhonePreferences._() : super._();

  @override
  String get verificationId;
  @override
  String get phoneNumber;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$PhonePreferencesCopyWith<_PhonePreferences> get copyWith =>
      throw _privateConstructorUsedError;
}
