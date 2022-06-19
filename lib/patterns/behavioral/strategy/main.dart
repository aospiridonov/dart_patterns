import 'strategy.dart';

void mainStrategy() {
  final context = Context(ConcreteStrategyA());
  print('Client: Strategy is set to normal sorting.');
  context.doSomeBusinessLogic();

  print('');

  print('Client: Strategy is set to reverse sorting.');
  context.strategy = ConcreteStrategyB();
  context.doSomeBusinessLogic();
}
