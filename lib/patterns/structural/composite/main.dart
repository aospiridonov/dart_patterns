import 'package:dart_patterns/patterns/structural/composite/composite.dart';

void clientCode({required Component component}) {
  print('Result: ${component.operation()}');
}

void clientCode2({
  required Component component1,
  required Component component2,
}) {
  if (component1.isComposite()) {
    component1.add(component2);
  }
  print('Result: ${component1.operation()}');
}

void mainComposite() {
  final simple = Leaf();
  print('Client: I\'ve got a simple component:');
  clientCode(component: simple);
  print('');

  final tree = Composite();
  final branch1 = Composite();
  branch1.add(Leaf());
  branch1.add(Leaf());
  final branch2 = Composite();
  branch2.add(Leaf());
  tree.add(branch1);
  tree.add(branch2);
  print('Client: Now I\'ve got a composite tree:');
  clientCode(component: tree);
  print('');

  print(
      'Client: I don\'t need to check the components classes even when managing the tree:');
  clientCode2(component1: tree, component2: simple);
}
