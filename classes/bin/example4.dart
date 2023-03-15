void main(List<String> args) {
  final foo = Person(
    firstName: 'Foo',
    lastName: 'Bar',
  );
  print(foo.fullName);
  print('---------------------------------');




}

class Person {
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';

  Person({
    required this.firstName,
    required this.lastName,
  });
}

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;

//   Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = '$firstName $lastName';
// }
