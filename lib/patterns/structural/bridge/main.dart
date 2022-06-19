import 'bridge.dart';

void clientCode({required Abstraction abstraction}) {
  print(abstraction.operation());
}

void mainBridge() {
  Implementation implementation = ConcreteImplementationA();
  Abstraction abstraction = Abstraction(implementation);
  clientCode(abstraction: abstraction);
  print('');
  implementation = ConcreteImplementationB();
  abstraction = ExtendedAbstraction(implementation);
  clientCode(abstraction: abstraction);
  print('');
}
