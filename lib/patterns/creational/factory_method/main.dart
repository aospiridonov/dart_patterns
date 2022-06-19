import 'factory_method.dart';

void clientCode({required Creator creator}) {
  print('Client: I\'m not aware of the creator\'s class, but it still works.');
  print(creator.someOperation());
}

void mainFactoryMethod() {
  print('App: Launched with the ConcreteCreator1.');
  clientCode(creator: ConcreteCreator1());
  print('');
  print('App: Launched with the ConcreteCreator2.');
  clientCode(creator: ConcreteCreator2());
}
