import 'prototype.dart';

void clientCode<T>({required Prototype<T> product}) {
  final cloneProduct = product.clone();
  print('Orign: $product');
  print('Clone: $cloneProduct');
}

void mainPrototype() {
  print('Product1:');
  clientCode(product: Product1(1));
  print('Product2:');
  clientCode(product: Product2('hello'));
}
