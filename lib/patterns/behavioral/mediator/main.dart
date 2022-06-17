import 'mediator.dart';

void mainMediator() {
  final component1 = Component1();
  final component2 = Component2();

  // ignore: unused_local_variable
  final mediator = ConcreteMediator(
    component1: component1,
    component2: component2,
  );

  print('Client triggers operation A.');
  component1.doA();
  print('');

  print('Client triggers operation D.');
  component2.doD();
  print('');
}
