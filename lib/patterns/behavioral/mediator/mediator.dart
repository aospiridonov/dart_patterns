abstract class Mediator {
  void notify({required Object sender, required String event});
}

class ConcreteMediator implements Mediator {
  final Component1 _component1;
  final Component2 _component2;
  ConcreteMediator(
      {required Component1 component1, required Component2 component2})
      : _component1 = component1,
        _component2 = component2 {
    _component1.mediator = this;
    _component2.mediator = this;
  }

  @override
  void notify({required Object sender, required String event}) {
    if (event == 'A') {
      print('Mediator reacts on A and triggers following operations:');
      _component2.doC();
    }

    if (event == 'D') {
      print('Mediator reacts on D and triggers following operations:');
      _component1.doB();
      _component2.doC();
    }
  }
}

class BaseComponent {
  Mediator? _mediator;
  set mediator(ConcreteMediator mediator) {
    _mediator = mediator;
  }
}

class Component1 extends BaseComponent {
  void doA() {
    print('Component 1 does A');
    _mediator?.notify(sender: this, event: 'A');
  }

  void doB() {
    print('Component 1 does B');
    _mediator?.notify(sender: this, event: 'B');
  }
}

class Component2 extends BaseComponent {
  void doC() {
    print('Component 2 does C');
    _mediator?.notify(sender: this, event: 'C');
  }

  void doD() {
    print('Component 2 does D');
    _mediator?.notify(sender: this, event: 'D');
  }
}
