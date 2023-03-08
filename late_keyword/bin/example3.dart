void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.descriton);
}

class Person {

  late String descriton = heavyCalculationOfDescription();

  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is called');
    return 'Foo Bar';
  }
}