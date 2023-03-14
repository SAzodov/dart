void main(List<String> args) {
  final woof = Animal(
    name: 'Woof',
    type: AnimaType.dog,
  );

  switch(woof.type) {
    case AnimaType.rabbit:
      print('This is a rabbit');
      break;
    case AnimaType.dog:
      print('This is a dog');
      break;
    case AnimaType.cat:
      print('This is a cat');
      break;
  }
}

enum AnimaType {
  rabbit,
  dog,
  cat,
}

class Animal {
  final String name;
  final AnimaType type;

  Animal({
    required this.name,
    required this.type,
  });
}
