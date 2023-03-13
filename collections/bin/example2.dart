import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {
    'Foo',
    'Bar',
    'Baz',
    'Qux',
  };
  print(names);
  print('----------------------');

  final names2 = [
    'Foo',
    'Bar',
    'Baz',
    'Foo',
  ];

  final uniqueNames = {...names2};
  print(uniqueNames);

  print('----------------------');

  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);

  print('----------------------');

  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};

  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('----------------------');

  if (SetEquality().equals(ages1, ages2)) {
      print('Ages are equal');
  } else {
      print('Ages are not equal');
  }

  print('----------------------');
}
