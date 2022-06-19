import 'adapter.dart';

void clientCode({required Target target}) {
  print(target.request());
}

void mainAdapter() {
  print('Client: I can work just fine with the Target objects:');
  final target = Target();
  clientCode(target: target);

  print('-');
  final adaptee = Adaptee();
  print(
      'Client: The Adaptee class has a weird interface. See, I don\'t understand it:');
  print('Adaptee: ${adaptee.specificRequest()}');

  print('-');
  print('Client: But I can work with it via the Adapter:');
  final adapter = Adapter(adaptee);
  clientCode(target: adapter);
}
