abstract class Iterator<T> {
  T get current;
  T get next;
  int get key;
  bool get valid;
  void rewind();
}

abstract class Aggregator {
  Iterator<String> get iterator;
}

class AlphabeticalOrderIterator implements Iterator<String> {
  final WordCollection _collection;
  final bool _reverse;
  int _position = 0;

  AlphabeticalOrderIterator({
    required WordCollection collection,
    bool reverse = false,
  })  : _collection = collection,
        _reverse = reverse;

  @override
  String get current => _collection.items[_position];

  @override
  int get key => _position;

  @override
  String get next {
    final item = _collection.items[_position];
    _position += _reverse ? -1 : 1;
    return item;
  }

  @override
  void rewind() => _position = _reverse ? _collection.length - 1 : 0;

  @override
  bool get valid => (_reverse && _position > 0) ||
          (!_reverse && _position < _collection.length)
      ? true
      : false;
}

class WordCollection implements Aggregator {
  final List<String> _items = [];

  List<String> get items => _items;
  int get length => _items.length;
  void add(String item) => _items.add(item);

  @override
  Iterator<String> get iterator => AlphabeticalOrderIterator(collection: this);

  Iterator<String> get reversed =>
      AlphabeticalOrderIterator(collection: this, reverse: true);
}
