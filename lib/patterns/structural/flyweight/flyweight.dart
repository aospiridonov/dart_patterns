import 'dart:convert';

class Flyweight {
  final Object _sharedState;
  Flyweight(this._sharedState);

  void operation(Object uniqueState) {
    var s = JsonEncoder().convert(_sharedState);
    var u = JsonEncoder().convert(uniqueState);
    print('Flyweight: Displaying shared ($s) and unique ($u) state.');
  }
}

class FlyweightFactory {
  final Map<String, Flyweight> _flyweights = <String, Flyweight>{};

  FlyweightFactory(List<List<String>> initialFlyweights) {
    for (final state in initialFlyweights) {
      _flyweights[getKey(state)] = Flyweight(state);
    }
  }

  String getKey(List<String> state) => state.join('_');

  Flyweight getFlyweight(List<String> sharedState) {
    final key = getKey(sharedState);

    if (!_flyweights.containsKey(key)) {
      print('FlyweightFactory: Can\'t find a flyweight, creating new one.');
      _flyweights[key] = Flyweight(sharedState);
    } else {
      print('FlyweightFactory: Reusing existing flyweight.');
    }

    return _flyweights[key]!;
  }

  void listFlyweights() {
    final count = _flyweights.length;
    print('\nFlyweightFactory: I have $count flyweights:');
    _flyweights.forEach((key, _) => print(key));
  }
}
