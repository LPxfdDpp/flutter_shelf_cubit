import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'union.freezed.dart';
part 'union.g.dart';

@freezed
class Union with _$Union {
  factory Union({ @JsonKey(name: 'my_name') String? name, int? age }) = _Union;

  factory Union.fromJson(Map<String, dynamic> json) => _$UnionFromJson(json);
}