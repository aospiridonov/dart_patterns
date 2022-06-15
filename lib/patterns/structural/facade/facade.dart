class Facade {
  final Subsystem1 subsystem1;
  final Subsystem2 subsystem2;

  Facade({Subsystem1? subsystem1, Subsystem2? subsystem2})
      : subsystem1 = subsystem1 ?? Subsystem1(),
        subsystem2 = subsystem2 ?? Subsystem2();

  String operation() {
    return '''
Facade initializes subsystems:
    ${subsystem1.operation1()}
    ${subsystem2.operation1()} 
Facade orders subsystems to perform the action:
    ${subsystem1.operationN()}
    ${subsystem2.operationZ()}
''';
  }
}

class Subsystem1 {
  String operation1() => 'Subsystem1: Ready!';
  //...
  String operationN() => 'Subsystem1: Go!';
}

class Subsystem2 {
  String operation1() => 'Subsystem2: Get ready!';
  //...
  String operationZ() => 'Subsystem2: Fire!';
}
