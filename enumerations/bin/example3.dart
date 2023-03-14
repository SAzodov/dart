void main(List<String> args) {
  final whiskers = AnimalType.dog;
  switch (whiskers) {
    case AnimalType.cat:
      print('This is a cat');
      break;
    default:
      print('This is not a cat');
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
  monkey,
}