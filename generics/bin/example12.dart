void main(List<String> args) {
  print(Person(age: 10.8).ageRounded); 
}

class Person<T extends num> {
  final T age;
  const Person({
    required this.age,
  });

  int get ageRounded => age.round();
}