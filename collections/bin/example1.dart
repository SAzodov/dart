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

}