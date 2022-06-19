import 'flyweight.dart';

void addCarToPoliceDatabase({
  required FlyweightFactory factory,
  required String plates,
  required String owner,
  required String brand,
  required String model,
  required String color,
}) {
  print('\nClient: Adding a car to database.');
  final flyweight = factory.getFlyweight(<String>[brand, model, color]);
  flyweight.operation([plates, owner]);
}

void mainFlyweight() {
  final flyweightFactory = FlyweightFactory(
    [
      ['Chevrolet', 'Camaro2018', 'pink'],
      ['Mercedes Benz', 'C300', 'black'],
      ['Mercedes Benz', 'C500', 'red'],
      ['BMW', 'M5', 'red'],
      ['BMW', 'X6', 'white'],
    ],
  );
  flyweightFactory.listFlyweights();

  addCarToPoliceDatabase(
    factory: flyweightFactory,
    plates: 'CL234IR',
    owner: 'James Doe',
    brand: 'BMW',
    model: 'M5',
    color: 'red',
  );

  addCarToPoliceDatabase(
    factory: flyweightFactory,
    plates: 'CL234IR',
    owner: 'James Doe',
    brand: 'BMW',
    model: 'X1',
    color: 'red',
  );

  flyweightFactory.listFlyweights();
}
