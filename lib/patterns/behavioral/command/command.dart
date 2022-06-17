abstract class Command {
  void execute();
}

class SimpleCommand implements Command {
  final String _payload;
  const SimpleCommand(this._payload);

  @override
  void execute() => print(
      'SimpleCommand: See, I can do simple things like printing ($_payload)');
}

class ComplexCommand implements Command {
  final Receiver _receiver;
  final String _a, _b;
  ComplexCommand({
    required Receiver receiver,
    required String a,
    required String b,
  })  : _receiver = receiver,
        _a = a,
        _b = b;

  @override
  void execute() {
    print('ComplexCommand: Complex stuff should be done by a receiver object.');
    _receiver.doSomething(_a);
    _receiver.doSomethingElse(_b);
  }
}

class Receiver {
  void doSomething(String a) => print('Receiver: Working on ($a.)');

  void doSomethingElse(String b) => print('Receiver: Also working on ($b.)');
}

class Sender {
  Command? _onStart;
  Command? _onFinish;

  set onStart(Command onStart) => _onStart = onStart;
  set onFinish(Command onFinish) => _onFinish = onFinish;

  void doSomethingImportant() {
    print('Sender: Does anybody want something done before I begin?');
    if (_isCommand(_onStart)) {
      _onStart!.execute();
    }

    print('Invoker: Does anybody want something done after I finish?');
    if (_isCommand(_onFinish)) {
      _onFinish!.execute();
    }
  }

  bool _isCommand(Object? object) => (object is Command);
}
