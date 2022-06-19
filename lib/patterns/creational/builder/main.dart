import 'builder.dart';

void clientCode({required Director director}) {
  final builder = ConcreteBuilder1();
  director.setBuilder(builder);

  print('Standard basic product:');
  director.buildMinimalViableProduct();
  builder.getProduct().listParts();

  print('Standard full featured product:');
  director.buildFullFeaturedProduct();
  builder.getProduct().listParts();

  print('Custom product:');
  builder
    ..producePartA()
    ..producePartC()
    ..getProduct().listParts();
}

void mainBuilder() {
  final director = Director();
  clientCode(director: director);
}
