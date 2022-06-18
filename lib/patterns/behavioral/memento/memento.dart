import 'dart:math';

class Originator {
  String _state;
  Originator(this._state) {
    print('Originator: My initial state is: $_state');
  }

  void doSomething() {
    print('Originator: I\'m doing something important.');
    _state = generateRandomString(length: 30);
    print('Originator: and my state has changed to: $_state');
  }

  String generateRandomString({int length = 10}) {
    const charSet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return List<String>.generate(
        length, (index) => charSet[Random().nextInt(charSet.length)]).join('');
  }

  Memento save() {
    return ConcreteMomento(_state);
  }

  void restore(Memento memento) {
    _state = memento.state;
    print('Originator: My state has changed to: $_state');
  }
}

abstract class Memento {
  String get state;
  String get name;
  String get date;
}

class ConcreteMomento implements Memento {
  final String _state;
  final String _date;

  ConcreteMomento(this._state)
      : _date = DateTime.now().toIso8601String().replaceAll('T', '');

  @override
  String get state => _state;

  @override
  String get name => '$_date / (${_state.substring(0, 9)}...)';

  @override
  String get date => _date;
}

class Caretaker {
  final List<Memento> _mementos = [];
  final Originator _originator;

  Caretaker(this._originator);

  void backup() {
    print('\nCaretaker: Saving Originator\'s state...');
    _mementos.add(_originator.save());
  }

  void undo() {
    if (_mementos.isEmpty) {
      return;
    }
    final memento = _mementos.removeLast();

    print('Caretaker: Restoring state to: ${memento.name}');
    _originator.restore(memento);
  }

  void showHistory() {
    print('Caretaker: Here\'s the list of mementos:');
    for (final memento in _mementos) {
      print(memento.name);
    }
  }
}
