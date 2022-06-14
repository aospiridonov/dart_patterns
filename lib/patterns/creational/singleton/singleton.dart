class Singleton {
  Singleton._();
  static final Singleton _instance = Singleton._();
  factory Singleton() => _instance;
  static Singleton get instance => _instance;
}
