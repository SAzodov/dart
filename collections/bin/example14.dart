import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('---------------------------');
  testCanonicalizeMap();
}

void testCanonicalizeMap(){
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'address': 'New York',
  };

  final canonMap = CanonicalizedMap.from(
    info,
    (key) {
      return key.length;
      // return key.split('').first;
    },
  );
  print(canonMap);
}

void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  boolList[4] = true;
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}
