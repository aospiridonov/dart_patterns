abstract class Prototype<T> {
  T clone();
}

class Product1 implements Prototype<Product1> {
  int value = 0;

  Product1(this.value);

  @override
  Product1 clone() => Product1(value);

  @override
  String toString() => 'value: $value, hashCode: $hashCode';
}

class Product2 implements Prototype<Product2> {
  String value = '';

  Product2(this.value);

  @override
  Product2 clone() => Product2(value);

  @override
  String toString() => 'value: $value, hashCode: $hashCode';
}
