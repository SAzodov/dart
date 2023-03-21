void main(List<String> args) async {
  await for (final chars in getNames().asyncExpand((name) => getCharacters(name))) {
    print(chars);
  }
}

Stream<String> getCharacters(String fromString) async*{
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(Duration(microseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(milliseconds: 300));
  yield 'John';
  await Future.delayed(Duration(milliseconds: 200));
  yield 'Doe';
}