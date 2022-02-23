enum CarType {saloon, suv, hatchback, fastback, coupe, universal}
enum CarClass {standard, business, premium}
enum CarColor {red, yellow, green, blue, black, white, grey}
enum CarTransmission {manual, automatic}


class Car {
  late CarType type;
  late CarClass carClass;
  late CarColor color;
  late CarTransmission transmission;
  late int wheelsRadius;

  Car(CarBuilder builder) {
    type = builder.type;
    carClass = builder.carClass;
    color = builder.color;
    transmission = builder.transmission;
    wheelsRadius = builder.wheelRadius;
  }

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nTransmission of model: $transmission\nRadius of wheels: $wheelsRadius inches\n';
  }

  static CarBuilder get builder => CarBuilder();
  
}

class CarBuilder {
  CarType _type = CarType.saloon;
  CarClass _carClass = CarClass.standard;
  CarColor _color = CarColor.white;
  CarTransmission _transmission = CarTransmission.manual;
  int _wheelsRadius = 15;

  CarType get type => _type;
  CarClass get carClass => _carClass;
  CarColor get color => _color;
  CarTransmission get transmission => _transmission;
  int get wheelRadius => _wheelsRadius;

  void setType(CarType type) => _type = type;
  void setClass(CarClass carClass) => _carClass = carClass;
  void paint(CarColor color) => _color = color;
  void setTransmission(CarTransmission transmission) => _transmission = transmission;
  void setWheelsRadius(int radius) => _wheelsRadius = radius;

  Car build() => Car(this);
}
