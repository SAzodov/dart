void main(List<String> args) {
  describe();
  describe(something: null);
  describe(something: 'Hello, dart!');
}

void describe({
  String? something = 'Hello, world!',
}) {
  print('Something is $something');
}
