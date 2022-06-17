abstract class Subject {
  void request();
}

class RealSubject implements Subject {
  @override
  void request() {
    print('RealSubject: Handling request.');
  }
}

class Proxy implements Subject {
  final RealSubject _realSubject;

  Proxy(this._realSubject);

  @override
  void request() {
    if (_checkAccess()) {
      _realSubject.request();
      _logAccess();
    }
  }

  bool _checkAccess() {
    print('Proxy: Checking access prior to firing a real request.');
    return true;
  }

  void _logAccess() {
    print('Proxy: Logging the time of request.');
  }
}
