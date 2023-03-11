void main(List<String> args) {
  doSomethingWith(name: 'Sarvar');
  doSomethingWith(name: null);
}

void doSomethingWith({
  required String? name,
}) {
  print('Hello, $name!');
}
