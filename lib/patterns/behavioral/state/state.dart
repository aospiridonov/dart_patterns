class Context {
  late State _state;

  Context(State state) {
    transitionTo(state);
  }

  void transitionTo(State state) {
    print('Context: Transition to ${state.runtimeType}');
    _state = state;
    _state.context = this;
  }

  void request1() {
    _state.handle1();
  }

  void request2() {
    _state.handle2();
  }
}

abstract class State {
  late final Context _context;

  set context(Context context) => _context = context;

  void handle1();
  void handle2();
}

class ConcreteStateA extends State {
  @override
  void handle1() {
    print('ConcreteStateA handles request1.');
    print('ConcreteStateA wants to change the state of the context.');
    _context.transitionTo(ConcreteStateB());
  }

  @override
  void handle2() {
    print('ConcreteStateA handles request2.');
  }
}

class ConcreteStateB extends State {
  @override
  void handle1() {
    print('ConcreteStateB handles request1.');
  }

  @override
  void handle2() {
    print('ConcreteStateB handles request2.');
    print('ConcreteStateB wants to change the state of the context.');
    _context.transitionTo(ConcreteStateA());
  }
}
