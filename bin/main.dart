import 'package:builder_without_director/car.dart';

void main() {
  CarBuilder carBuilder = Car.builder;
  
  Car standardCar = (
    carBuilder
  ..setType(CarType.saloon)
  ..setClass(CarClass.standard)
  ..paint(CarColor.white)
  ..setTransmission(CarTransmission.manual)
  ..setWheelsRadius(15)
  ).build();

  Car businessCar = (
    carBuilder
  ..setType(CarType.suv)
  ..setClass(CarClass.business)
  ..paint(CarColor.grey)
  ..setTransmission(CarTransmission.automatic)
  ..setWheelsRadius(18)
  ).build();

  Car premiumCar = (
    carBuilder
  ..setType(CarType.coupe)
  ..setClass(CarClass.premium)
  ..paint(CarColor.black)
  ..setTransmission(CarTransmission.automatic)
  ..setWheelsRadius(21)
  ).build();


  print('$standardCar\n' + '---'*20 + '\n$businessCar\n' + '---'*20 + '\n$premiumCar\n');
}
