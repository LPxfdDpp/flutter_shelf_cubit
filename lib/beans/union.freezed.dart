// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Union _$UnionFromJson(Map<String, dynamic> json) {
  return _Union.fromJson(json);
}

/// @nodoc
class _$UnionTearOff {
  const _$UnionTearOff();

  _Union call({@JsonKey(name: 'my_name') String? name, int? age}) {
    return _Union(
      name: name,
      age: age,
    );
  }

  Union fromJson(Map<String, Object?> json) {
    return Union.fromJson(json);
  }
}

/// @nodoc
const $Union = _$UnionTearOff();

/// @nodoc
mixin _$Union {
  @JsonKey(name: 'my_name')
  String? get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnionCopyWith<Union> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionCopyWith<$Res> {
  factory $UnionCopyWith(Union value, $Res Function(Union) then) =
      _$UnionCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'my_name') String? name, int? age});
}

/// @nodoc
class _$UnionCopyWithImpl<$Res> implements $UnionCopyWith<$Res> {
  _$UnionCopyWithImpl(this._value, this._then);

  final Union _value;
  // ignore: unused_field
  final $Res Function(Union) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UnionCopyWith<$Res> implements $UnionCopyWith<$Res> {
  factory _$UnionCopyWith(_Union value, $Res Function(_Union) then) =
      __$UnionCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'my_name') String? name, int? age});
}

/// @nodoc
class __$UnionCopyWithImpl<$Res> extends _$UnionCopyWithImpl<$Res>
    implements _$UnionCopyWith<$Res> {
  __$UnionCopyWithImpl(_Union _value, $Res Function(_Union) _then)
      : super(_value, (v) => _then(v as _Union));

  @override
  _Union get _value => super._value as _Union;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_Union(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Union with DiagnosticableTreeMixin implements _Union {
  _$_Union({@JsonKey(name: 'my_name') this.name, this.age});

  factory _$_Union.fromJson(Map<String, dynamic> json) =>
      _$$_UnionFromJson(json);

  @override
  @JsonKey(name: 'my_name')
  final String? name;
  @override
  final int? age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Union(name: $name, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Union'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Union &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$UnionCopyWith<_Union> get copyWith =>
      __$UnionCopyWithImpl<_Union>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnionToJson(this);
  }
}

abstract class _Union implements Union {
  factory _Union({@JsonKey(name: 'my_name') String? name, int? age}) = _$_Union;

  factory _Union.fromJson(Map<String, dynamic> json) = _$_Union.fromJson;

  @override
  @JsonKey(name: 'my_name')
  String? get name;
  @override
  int? get age;
  @override
  @JsonKey(ignore: true)
  _$UnionCopyWith<_Union> get copyWith => throw _privateConstructorUsedError;
}
