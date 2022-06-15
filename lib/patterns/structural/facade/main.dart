import 'package:dart_patterns/patterns/structural/facade/facade.dart';

void clientCode({required Facade facade}) {
  print('${facade.operation()}');
}

void mainFacade() {
  final subsystem1 = Subsystem1();
  final subsystem2 = Subsystem2();
  final facade = Facade(
    subsystem1: subsystem1,
    subsystem2: subsystem2,
  );
  clientCode(facade: facade);
}
