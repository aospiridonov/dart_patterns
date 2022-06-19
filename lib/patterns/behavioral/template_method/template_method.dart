abstract class AbstractClass {
  void templateMethod() {
    baseOperation1();
    requiredOperation1();
    baseOperation2();
    hook1();
    requiredOperation1();
    baseOperation3();
    hook2();
  }

  void baseOperation1() =>
      print('AbstractClass says: I am doing the bulk of the work');

  void baseOperation2() => print(
      'AbstractClass says: But I let subclasses override some operations');

  void baseOperation3() =>
      print('AbstractClass says: But I am doing the bulk of the work anyway');

  void requiredOperation1();
  void requiredOperation2();

  void hook1() {}
  void hook2() {}
}

class ConcreteClass1 extends AbstractClass {
  @override
  void requiredOperation1() =>
      print('ConcreteClass1 says: Implemented Operation1');

  @override
  void requiredOperation2() =>
      print('ConcreteClass1 says: Implemented Operation2');
}

class ConcreteClass2 extends AbstractClass {
  @override
  void requiredOperation1() =>
      print('ConcreteClass2 says: Implemented Operation1');

  @override
  void requiredOperation2() =>
      print('ConcreteClass2 says: Implemented Operation2');

  @override
  void hook1() => print('ConcreteClass2 says: Overridden Hook1');
}
