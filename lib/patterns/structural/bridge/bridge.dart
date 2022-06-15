class Abstraction {
  Implementation implementation;
  Abstraction(this.implementation);
  String operation() =>
      'Abstraction: Base operation with:\n${implementation.operationImplementation()}';
}

class ExtendedAbstraction extends Abstraction {
  ExtendedAbstraction(super.implementation);
  @override
  String operation() =>
      'ExtendedAbstraction: Extended operation with:\n${implementation.operationImplementation()}';
}

abstract class Implementation {
  String operationImplementation();
}

class ConcreteImplementationA implements Implementation {
  @override
  String operationImplementation() =>
      'ConcreteImplementationA: Here\'s the result on the platform A.';
}

class ConcreteImplementationB implements Implementation {
  @override
  String operationImplementation() =>
      'ConcreteImplementationB: Here\'s the result on the platform B.';
}
