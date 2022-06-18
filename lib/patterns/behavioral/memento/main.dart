import 'memento.dart';

void mainMemento() {
  final originator = Originator('Super-duper-super-puper-super.');
  final caretaker = Caretaker(originator);

  caretaker.backup();
  originator.doSomething();

  caretaker.backup();
  originator.doSomething();

  caretaker.backup();
  originator.doSomething();

  print('');
  caretaker.showHistory();

  print('\nClient: Now, let\'s rollback!\n');
  caretaker.undo();

  print('\nClient: Once more!\n');
  caretaker.undo();
}
