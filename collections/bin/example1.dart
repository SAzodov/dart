void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];
  for (final name in names) {
    print(name);
  }

  print('-------------------');

  for (final name in names.reversed) {
    print(name);
  }

  print('-------------------');

  if (names.contains('Bar')) {
    print('Bar is in the list');
  }

  print('-------------------');

  for (final name in names.where((String name) => name.startsWith('B'))) {
    print(name);
  }

  print('-------------------');

  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);

  print('-------------------');

  try {
    print(names[4]);
  } catch (e) {
    print(e);
  }

  print('-------------------');

  names.sublist(1, 3).forEach(print);

  print('-------------------');

  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(50);
  print(ages);

  print('-------------------');

  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Quxd'];
  if (names1 == names2) {
    print('name1 ans name2 are equal');
  } else {
    print('name1 ans name2 are not equal');
  }

  print('-------------------');

  names.map((str) => str.toUpperCase()).forEach(print);

  print('-------------------');

  names.map((str) => str.length).forEach(print);

  print('-------------------');

  final numbers = [1, 2, 3, 4, 5];
  final sum = numbers.fold(
    0,
    (
      int previousValue,
      int thisValue,
    ) =>
        previousValue + thisValue,
  );

  print(sum);

  print('-------------------');

  final totalLength =
      names.fold(0, (totalLength, str) => totalLength + str.length);
  print(totalLength);

  print('-------------------');

  final result = names.fold(
    '',
    (
      result,
      str,
    ) =>
        '$result ${str.toUpperCase()}',
  );
  print(result);
  print('-------------------');
}
