void main(List<String> args) {
  String? firstName = 'Sarvar';
  String? lastName = 'Azodov';

  final fullName = firstName.flatMap(
    (f) => lastName.flatMap(
      (l) => '$f $l',
    ),
  );
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}
