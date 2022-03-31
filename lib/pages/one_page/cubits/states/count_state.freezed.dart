// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'count_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountStateTearOff {
  const _$CountStateTearOff();

  _CountState call({int age = 100, String? name}) {
    return _CountState(
      age: age,
      name: name,
    );
  }
}

/// @nodoc
const $CountState = _$CountStateTearOff();

/// @nodoc
mixin _$CountState {
  int get age => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountStateCopyWith<CountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountStateCopyWith<$Res> {
  factory $CountStateCopyWith(
          CountState value, $Res Function(CountState) then) =
      _$CountStateCopyWithImpl<$Res>;
  $Res call({int age, String? name});
}

/// @nodoc
class _$CountStateCopyWithImpl<$Res> implements $CountStateCopyWith<$Res> {
  _$CountStateCopyWithImpl(this._value, this._then);

  final CountState _value;
  // ignore: unused_field
  final $Res Function(CountState) _then;

  @override
  $Res call({
    Object? age = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CountStateCopyWith<$Res> implements $CountStateCopyWith<$Res> {
  factory _$CountStateCopyWith(
          _CountState value, $Res Function(_CountState) then) =
      __$CountStateCopyWithImpl<$Res>;
  @override
  $Res call({int age, String? name});
}

/// @nodoc
class __$CountStateCopyWithImpl<$Res> extends _$CountStateCopyWithImpl<$Res>
    implements _$CountStateCopyWith<$Res> {
  __$CountStateCopyWithImpl(
      _CountState _value, $Res Function(_CountState) _then)
      : super(_value, (v) => _then(v as _CountState));

  @override
  _CountState get _value => super._value as _CountState;

  @override
  $Res call({
    Object? age = freezed,
    Object? name = freezed,
  }) {
    return _then(_CountState(
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CountState with DiagnosticableTreeMixin implements _CountState {
  _$_CountState({this.age = 100, this.name});

  @JsonKey()
  @override
  final int age;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountState(age: $age, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountState'))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountState &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$CountStateCopyWith<_CountState> get copyWith =>
      __$CountStateCopyWithImpl<_CountState>(this, _$identity);
}

abstract class _CountState implements CountState {
  factory _CountState({int age, String? name}) = _$_CountState;

  @override
  int get age;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$CountStateCopyWith<_CountState> get copyWith =>
      throw _privateConstructorUsedError;
}
