import 'iteraror.dart';

void mainIterator() {
  final collection = WordCollection();
  collection.add('First');
  collection.add('Second');
  collection.add('Third');

  final iterator = collection.iterator;

  print('Straight traversal:');
  while (iterator.valid) {
    print(iterator.next);
  }
  print('');
  print('Reverse traversal:');
  final reverseIterator = collection.reversed;
  while (reverseIterator.valid) {
    print(reverseIterator.next);
  }
}
