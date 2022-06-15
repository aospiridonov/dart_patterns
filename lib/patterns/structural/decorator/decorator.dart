abstract class Component {
  String operation();
}

class ConcreteComponent implements Component {
  @override
  String operation() => 'ConcreteComponent';
}

class Decorator implements Component {
  final Component component;
  Decorator(this.component);

  @override
  String operation() => component.operation();
}

class ConcreteDecoratorA extends Decorator {
  ConcreteDecoratorA(super.component);

  @override
  String operation() {
    return 'ConcreteDecoratorA(${super.operation()})';
  }
}

class ConcreteDecoratorB extends Decorator {
  ConcreteDecoratorB(super.component);

  @override
  String operation() {
    return 'ConcreteDecoratorB(${super.operation()})';
  }
}
