void main(List<String> args) {
  print([1, 2, 3].containsDuplicates);
  print([1, 2, 1, 3].containsDuplicates);
}

extension on Iterable {
  bool get containsDuplicates => toSet().length != length;
}