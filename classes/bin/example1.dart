void main(List<String> args) {
  final person1 = Person(
    name: 'Foo',
    age: 20,
  );
  print(person1);
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}
