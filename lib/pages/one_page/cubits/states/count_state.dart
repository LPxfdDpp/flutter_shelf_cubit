import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'count_state.freezed.dart';

@freezed
class CountState with _$CountState {
  factory CountState({@Default(100) int age ,String? name}) = _CountState;
}