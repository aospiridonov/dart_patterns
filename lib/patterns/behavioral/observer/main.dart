import 'observer.dart';

void mainObserver() {
  final subject = ConcreteSubject();
  final observer1 = ConcreteObserverA();
  subject.attach(observer1);

  final observer2 = ConcreteObserverB();
  subject.attach(observer2);

  subject.someBusinessLogic();
  subject.someBusinessLogic();

  subject.detach(observer2);

  subject.someBusinessLogic();
}
