void main(List<String> args) {
  print([1, 2, 3].sum);
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((value, element) => value + element as T);
}