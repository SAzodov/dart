void main(List<String> args) {
  const integers = [100, 5, 2];
  const doubles = [33.0, 3.0, 2.0];
  final number = integers.reduce(divide);
  print(number);
}

T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T;
  } else {
    return lhs / rhs as T;
  }
}