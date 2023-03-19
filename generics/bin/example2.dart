void main(List<String> args) {
  print(doTypesMatch(1, 2));
  print(doTypesMatch(1, 2.2));
}

bool doTypesMatch<L, R>(L a, R b) => L == R;