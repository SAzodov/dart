void main(List<String> args) {
  print(getFullName('Sarvar', 'Azodov'));
}


String getFullName(
  String? firstName,
  String? lastName
) => withAll([firstName, lastName], (name) => name.join(' ')) ?? 'Empty';


T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) 
    ? null 
    : callback(optionals.cast<T>());
