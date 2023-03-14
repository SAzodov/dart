void main(List<String> args) {
  final vehicle = VehicleType.car;
  switch(vehicle){

    case VehicleType.motorcycle:
      break;
    case VehicleType.bicycle:
      break;
    case VehicleType.car:
      break;
    case VehicleType.truck:
      break;
  }
}

enum VehicleType {
  car,
  truck,
  motorcycle,
  bicycle,
}