import 'dart:ffi';

import 'package:uuid/uuid.dart';

void main(List<String> args) {
  final uuid1 = const Uuid().v4();
  final uuid2 = const Uuid().v4();
  final person1 = Person(
    id: uuid1,
    name: 'John',
    age: 30,
  );
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  // TODO: implement id
  final String id;
  final String name;
  final int age;

  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
