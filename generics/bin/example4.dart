void main(List<String> args) {
  const one  = KeyValue(1, 2);
  print(one);
  const two = MapEntry(5, 7);
  print(two);
  const three = KeyValue('Foo', 'Bar');
  print(three);
}

typedef KeyValue<K, V> = MapEntry<K, V>;