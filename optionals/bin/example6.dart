void main(List<String> args) {
  List<String?>? names;
  names?.add('Foo');
  names?.add(null);

  final first = names?.first;
  print(first);
}