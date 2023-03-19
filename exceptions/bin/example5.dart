void main(List<String> args) {}

class Throws<T> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTooTiredException implements Exception {
  const DogIsTooTiredException();
}

class Animal {
  final int age;

  const Animal({
    required this.age,
  });

  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;

  const Dog({
    required super.age,
    required this.isTired,
  });


  @Throws([DogIsTooOldException, DogIsTooTiredException])
  @override
  void run() {
    if (age > 10) {
      throw const DogIsTooOldException();
    } else if (isTired) {
      throw const DogIsTooTiredException();
    } else {
      print('Dog is running');
    }
  }
}