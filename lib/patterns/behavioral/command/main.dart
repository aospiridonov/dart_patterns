import 'command.dart';

void mainCommand() {
  final sender = Sender();
  sender.onStart = SimpleCommand('Say Hi!');
  final reseiver = Receiver();
  sender.onFinish = ComplexCommand(
    receiver: reseiver,
    a: 'Send email',
    b: 'Save report',
  );
  sender.doSomethingImportant();
}
