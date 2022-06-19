import 'dart:math';

abstract class Subject {
  void attach(Observer observer);
  void detach(Observer observer);
  void notify();
}

class ConcreteSubject implements Subject {
  int state = 0;
  List<Observer> _observers = [];

  @override
  void attach(Observer observer) {
    if (_observers.contains(observer)) {
      print('Subject: Observer has been attached already.');
      return;
    }

    print('Subject: Attached an observer.');
    _observers.add(observer);
  }

  @override
  void detach(Observer observer) {
    if (_observers.contains(observer)) {
      print('Subject: Nonexistent observer.');
      return;
    }

    _observers.remove(observer);
    print('Subject: Detached an observer.');
  }

  @override
  void notify() {
    print('Subject: Notifying observers...');
    for (var observer in _observers) {
      observer.update(this);
    }
  }

  void someBusinessLogic() {
    print('\nSubject: I\'m doing something important.');
    state = Random().nextInt(11);

    print('Subject: My state has just changed to: $state');
    notify();
  }
}

abstract class Observer {
  void update(Subject subject);
}

class ConcreteObserverA implements Observer {
  @override
  void update(Subject subject) {
    if (subject is ConcreteSubject && subject.state < 3) {
      print('ConcreteObserverA: Reacted to the event.');
    }
  }
}

class ConcreteObserverB implements Observer {
  @override
  void update(Subject subject) {
    if (subject is ConcreteSubject &&
        (subject.state == 0 || subject.state >= 2)) {
      print('ConcreteObserverB: Reacted to the event.');
    }
  }
}
