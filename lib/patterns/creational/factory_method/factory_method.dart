abstract class Creator {
  Product factoryMethod(); //factory
  String someOperation() =>
      'Creator: The same creator\'s code has just worked with ${factoryMethod().operation()}';
}

class ConcreteCreator1 extends Creator {
  @override
  Product factoryMethod() => ConcreteProduct1();
}

class ConcreteCreator2 extends Creator {
  @override
  Product factoryMethod() => ConcreteProduct2();
}

abstract class Product {
  String operation();
}

class ConcreteProduct1 implements Product {
  @override
  String operation() => '{Result of the ConcreteProduct1}';
}

class ConcreteProduct2 implements Product {
  @override
  String operation() => '{Result of the ConcreteProduct2}';
}
