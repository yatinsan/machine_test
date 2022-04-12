import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class Person with _$Person {
  const factory Person({
    String? name,
    int? age,
  }) = _Person;
}

class _Person {
  String? name;
  int? age;
}
