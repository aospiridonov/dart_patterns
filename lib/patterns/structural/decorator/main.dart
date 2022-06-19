import 'decorator.dart';

void clientCode({required Component component}) {
  print('Result: ${component.operation()}');
}

void mainDecorator() {
  final simple = ConcreteComponent();
  print('Client: I\'ve got a simple component:');
  clientCode(component: simple);
  print('');

  final decorator1 = ConcreteDecoratorA(simple);
  final decorator2 = ConcreteDecoratorB(decorator1);
  print('Client: Now I\'ve got a decorated component:');
  clientCode(component: decorator2);
}
