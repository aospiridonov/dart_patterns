void clientCode(AbstractFactory factory) {
  final productA = factory.createProductA();
  final productB = factory.createProductB();
  print(productB.usfulFunctionB());
  print(productB.anotherUsfulFunctionB(productA));
}

abstract class AbstractFactory {
  AbstractProductA createProductA();
  AbstractProductB createProductB();
}

class ConcreteFactory1 implements AbstractFactory {
  @override
  AbstractProductA createProductA() => ConcreteProductA1();

  @override
  AbstractProductB createProductB() => ConcreteProductB1();
}

class ConcreteFactory2 implements AbstractFactory {
  @override
  AbstractProductA createProductA() => ConcreteProductA2();

  @override
  AbstractProductB createProductB() => ConcreteProductB2();
}

abstract class AbstractProductA {
  String usfulFunctionA();
}

class ConcreteProductA1 implements AbstractProductA {
  @override
  String usfulFunctionA() => 'The result of the product A1.';
}

class ConcreteProductA2 implements AbstractProductA {
  @override
  String usfulFunctionA() => 'The result of the product A2.';
}

abstract class AbstractProductB {
  String usfulFunctionB();
  String anotherUsfulFunctionB(AbstractProductA colloborator);
}

class ConcreteProductB1 implements AbstractProductB {
  @override
  String usfulFunctionB() => 'The result of the product B1.';

  @override
  String anotherUsfulFunctionB(AbstractProductA colloborator) =>
      'The result of the B1 collaborating with the (${colloborator.usfulFunctionA()})';
}

class ConcreteProductB2 implements AbstractProductB {
  @override
  String usfulFunctionB() => 'The result of the product B2.';

  @override
  String anotherUsfulFunctionB(AbstractProductA colloborator) =>
      'The result of the B2 collaborating with the (${colloborator.usfulFunctionA()})';
}
