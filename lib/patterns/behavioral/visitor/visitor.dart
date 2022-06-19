abstract class Component {
  void accept(Visitor visitor);
}

class ConcreteComponentA implements Component {
  @override
  void accept(Visitor visitor) => visitor.visitConcreteComponentA(this);

  String exclusiveMethodOfConcreteComponentA() => 'A';
}

class ConcreteComponentB implements Component {
  @override
  void accept(Visitor visitor) => visitor.visitConcreteComponentB(this);

  String exclusiveMethodOfConcreteComponentB() => 'B';
}

abstract class Visitor {
  void visitConcreteComponentA(ConcreteComponentA component);
  void visitConcreteComponentB(ConcreteComponentB component);
}

class ConcreteVisitor1 implements Visitor {
  @override
  void visitConcreteComponentA(ConcreteComponentA component) => print(
      '${component.exclusiveMethodOfConcreteComponentA()} + ConcreteVisitor1');

  @override
  void visitConcreteComponentB(ConcreteComponentB component) => print(
      '${component.exclusiveMethodOfConcreteComponentB()} + ConcreteVisitor1');
}

class ConcreteVisitor2 implements Visitor {
  @override
  void visitConcreteComponentA(ConcreteComponentA component) => print(
      '${component.exclusiveMethodOfConcreteComponentA()} + ConcreteVisitor2');

  @override
  void visitConcreteComponentB(ConcreteComponentB component) => print(
      '${component.exclusiveMethodOfConcreteComponentB()} + ConcreteVisitor2');
}
