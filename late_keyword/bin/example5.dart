
void main(List<String> args) {
  final person = Person();
  person.description = 'Description 1';
  print(person.description);

  final woof = Dog();
  woof.description = 'Dog description';
  print(woof.description);
  woof.description = 'ffffff';
  print(woof.description);

}

class Person{
  late String description;

}

class Dog {
  late final String description;
}

