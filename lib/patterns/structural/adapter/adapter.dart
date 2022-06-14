class Target {
  String request() => 'Target: The default target\'s behavior.';
}

class Adaptee {
  String specificRequest() => '.eetpadA eht fo roivaheb laicepS';
}

class Adapter extends Target {
  final Adaptee adaptee;
  Adapter(this.adaptee);

  @override
  String request() =>
      'Adapter:(TRANSLATED) ${adaptee.specificRequest().split('').reversed.join()}';
}
