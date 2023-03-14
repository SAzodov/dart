void main(List<String> args) {
  describe(animalType(fromStr: 'rabbit'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    
    case AnimalType.rabbit:
      print('Rabbit');
      break;
    case AnimalType.dog:
      print('Dog');
      break;
    case AnimalType.cat:
    print('Cat');
      break;
    default:
      print('Unknown');
  }
}

AnimalType? animalType({
  required String fromStr,
}) {
  try{
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  }catch(e){
    return null;
  }

}

enum AnimalType {
  rabbit,
  dog,
  cat,
}
