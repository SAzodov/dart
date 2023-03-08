void main(List<String> args) {
  final person = Person();
  person.firstName = 'Sarvar';
  person.lastName = 'Azodov';
  try {
    print(person.fullName);
  } catch (e) {
    print(e);
  }
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}