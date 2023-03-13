void main(List<String> args) {
  final person1 = Person(
    age: 10,
    name: 'Foo',
  );
  final person2 = Person(
    age: 10,
    name: 'Foo',
  );

  // print(person1.hashCode);
  // print(person2.hashCode);

  print('---------------------');

  final persons = {person1, person2};
  print(persons);

  print('---------------------');
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );
  @override
  bool operator ==(Object other) =>
    identical(this, other) || 
    other is Person && name == other.name && age == other.age;
}
