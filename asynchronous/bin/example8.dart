void main(List<String> args) async {
  await for (final names in allNames()) {
    print(names);
  }
}

Stream<String> maleNames() async* {
  yield 'John';
  yield 'Peter';
  yield 'Paul';
}

Stream<String> femaleNames() async* {
  yield 'Mary';
  yield 'Jane';
  yield 'Sue';
}

Stream<String> allNames() async* {
  yield* maleNames();
  yield* femaleNames();
  // await for (final maleName in maleNames()) {
  //   yield maleName;
  // }
  // await for (final femaleName in femaleNames()) {
  //   yield femaleName;
  // }
}