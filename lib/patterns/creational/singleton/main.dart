import 'singleton.dart';

void clientCode() {
  final s1 = Singleton();
  final s2 = Singleton();
  if (s1 == s2) {
    print('Singleton works, both variables contain the same instance.');
  } else {
    print('Singleton failed, variables contain different instances.');
  }
}

void mainSingleton() {
  clientCode();
}
