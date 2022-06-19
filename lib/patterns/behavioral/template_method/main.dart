import 'template_method.dart';

void clientCode(AbstractClass abstractClass) {
  abstractClass.templateMethod();
}

void mainTemplateMethod() {
  print('Same client code can work with different subclasses:');
  clientCode(ConcreteClass1());
  print('');

  print('Same client code can work with different subclasses:');
  clientCode(ConcreteClass2());
}
