void main(List<String> args) {}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({
    required this.kind,
  });

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

class Car extends Vehicle {
  Car() : super(kind: VehicleKind.car);
}

enum VehicleKind {
  car,
  truck,
  motorcycle,
  bicycle,
}
