import 'visitor.dart';

void clientCode({
  required List<Component> components,
  required Visitor visitor,
}) {
  for (var component in components) {
    component.accept(visitor);
  }
}

void mainVisitor() {
  final components = [
    ConcreteComponentA(),
    ConcreteComponentB(),
  ];

  print(
      'The client code works with all visitors via the base Visitor interface:');
  final visitor1 = ConcreteVisitor1();
  clientCode(components: components, visitor: visitor1);
  print('');

  print(
      'It allows the same client code to work with different types of visitors:');
  final visitor2 = ConcreteVisitor2();
  clientCode(components: components, visitor: visitor2);
}
