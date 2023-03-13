void main(List<String> args) {
  final string = 'abracadabra';
  // var result = '';
  // for (final char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {
  //   } else {
  //     result += char;
  //   }
  // }

  var result = {
    for (final char in string.split(''))
      'abc'.contains(char) ? null : char
  }
  ..removeAll([null])
  ..cast<String>();
  print(result);
  print('----------------------------------');

  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];
  print(evenNumbers);

  print('----------------------------------');
}