import 'package:dart_patterns/patterns/creational/abstract_factory/abstract_factory.dart';

void mainAbstractFactory() {
  print('Client: Testing client code with the first factory type...');
  clientCode(ConcreteFactory1());
  print('-');
  print('Client: Testing the same client code with the second factory type...');
  clientCode(ConcreteFactory2());
}
