void main(List<String> args) {
  doSomethingWith(name: 'Foo');
  doSomethingWith();
}

void doSomethingWith({String name = 'Bar'}) {
  print('Hello, $name');
}