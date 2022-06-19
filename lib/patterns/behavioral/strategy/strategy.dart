class Context {
  late Strategy _strategy;
  Context(this._strategy);
  set strategy(Strategy strategy) => _strategy = strategy;

  void doSomeBusinessLogic() {
    print(
        'Context: Sorting data using the strategy (not sure how it\'ll do it)');
    final result = _strategy.doAlgorithm(['a', 'b', 'c', 'd', 'e']);
    print(result.join(','));
  }
}

abstract class Strategy {
  List<String> doAlgorithm(List<String> data);
}

class ConcreteStrategyA implements Strategy {
  @override
  List<String> doAlgorithm(List<String> data) => data..sort();
}

class ConcreteStrategyB implements Strategy {
  @override
  List<String> doAlgorithm(List<String> data) => data.reversed.toList();
}
