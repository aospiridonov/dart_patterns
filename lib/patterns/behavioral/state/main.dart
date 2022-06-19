import 'state.dart';

void mainState() {
  final context = Context(ConcreteStateA());
  context.request1();
  context.request2();
}
