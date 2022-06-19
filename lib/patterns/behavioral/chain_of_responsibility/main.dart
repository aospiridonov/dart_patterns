import 'chain_of_responsibility.dart';

void clientCode({required Handler handler}) {
  const foods = ['Nut', 'Banana', 'Cup of coffee'];
  for (final food in foods) {
    print('Client: Who wants a $food?');
    final result = handler.handle(food);
    if (result != null) {
      print(' - $result');
    } else {
      print(' - $food was left untouched.');
    }
  }
}

void mainChainOfResponsibility() {
  final monkey = MonkeyHandler();
  final squirrel = SquirrelHandler();
  final dog = DogHandler();
  monkey.setNext(squirrel).setNext(dog);
  print('Chain: Monkey > Squirrel > Dog\n');
  clientCode(handler: monkey);
  print('');

  print('Subchain: Squirrel > Dog\n');
  clientCode(handler: squirrel);
}
