void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily = RightImplementationOfFamily(
    members: [
      johnDoe,
      janeDoe
    ]);
}

class Person {
  final String name;

  Person({
    required this.name,
  });
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int memberCount;

  RightImplementationOfFamily({required this.members}) {
    memberCount = getMemebersCount();
  }

  int getMemebersCount() {
    print('Getting members count');
    return members.length;
  }
}
