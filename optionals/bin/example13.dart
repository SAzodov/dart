void main(List<String> args) {
  print(fullName(null, null));
  print(fullName(null, 'Azodov'));
  print(fullName('Sarvar', null));
  print(fullName('Sarvar', 'Azodov'));
}

String fullName(
  String? firstName,
  String? lastName,
) => '${firstName.orDefault} ${lastName.orDefault}';

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    } else {

    }
    switch (T) {
      case int: 
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return '' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type $T');
    }
  }
} 