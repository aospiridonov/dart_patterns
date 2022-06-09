abstract class Builder {
  void producePartA();
  void producePartB();
  void producePartC();
}

class ConcreteBuilder1 implements Builder {
  late Product1 _product;

  ConcreteBuilder1() {
    reset();
  }

  void reset() {
    _product = Product1();
  }

  @override
  void producePartA() => _product.parts.add('PartA1');

  @override
  void producePartB() => _product.parts.add('PartB1');

  @override
  void producePartC() => _product.parts.add('PartC1');

  Product1 getProduct() {
    final product = _product;
    reset();
    return product;
  }
}

class Product1 {
  List<String> parts = <String>[];

  void listParts() => print('Product parts: ${parts.join(', ')}');
}

class Director {
  late Builder _builder;

  void setBuilder(Builder builder) => _builder = builder;

  void buildMinimalViableProduct() => _builder.producePartA();

  void buildFullFeaturedProduct() => _builder
    ..producePartA()
    ..producePartB()
    ..producePartC();
}
