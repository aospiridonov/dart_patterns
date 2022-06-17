abstract class Handler {
  Handler setNext(Handler handler);
  String? handle(String request);
}

abstract class AbstractHandler implements Handler {
  Handler? _nextHandler;
  @override
  Handler setNext(Handler handler) {
    _nextHandler = handler;
    return handler;
  }

  @override
  String? handle(String request) {
    if (_nextHandler != null) {
      return _nextHandler!.handle(request);
    }
    return null;
  }
}

class MonkeyHandler extends AbstractHandler {
  @override
  String? handle(String request) {
    if (request == 'Banana') {
      return 'Monkey: I will eat the $request.';
    }
    return super.handle(request);
  }
}

class SquirrelHandler extends AbstractHandler {
  @override
  String? handle(String request) {
    if (request == 'Nut') {
      return 'Squirre: I will eat the $request.';
    }
    return super.handle(request);
  }
}

class DogHandler extends AbstractHandler {
  @override
  String? handle(String request) {
    if (request == 'MeatBall') {
      return 'Dog: I will eat the $request.';
    }
    return super.handle(request);
  }
}
