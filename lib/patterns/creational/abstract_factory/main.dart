import 'package:dart_patterns/patterns/creational/abstract_factory/abstract_factory.dart';

void clientCode({required AbstractFactory factory}) {
  final productA = factory.createProductA();
  final productB = factory.createProductB();
  print(productB.usfulFunctionB());
  print(productB.anotherUsfulFunctionB(productA));
}

void mainAbstractFactory() {
  print('Client: Testing client code with the first factory type...');
  clientCode(factory: ConcreteFactory1());
  print('-');
  print('Client: Testing the same client code with the second factory type...');
  clientCode(factory: ConcreteFactory2());
}
