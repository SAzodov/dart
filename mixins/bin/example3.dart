void main(List<String> args) {
  final whiskers = Cat(age: 2);
  print(whiskers.age);
  whiskers.incrementsge();
  print(whiskers.age);
}

mixin HasAge {
  abstract int age;
  void incrementsge() => age++;
}

class Cat with HasAge {
  @override
  int age = 0;
  Cat({
    required this.age,
  });
}
