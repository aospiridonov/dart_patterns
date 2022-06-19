import 'proxy.dart';

void clientCode({required Subject subject}) {
  subject.request();
}

void mainProxy() {
  print('Client: Executing the client code with a real subject:');
  final realSubject = RealSubject();
  clientCode(subject: realSubject);
  print('');
  print('Client: Executing the same code with a proxy:');
  final proxy = Proxy(realSubject);
  clientCode(subject: proxy);
}
