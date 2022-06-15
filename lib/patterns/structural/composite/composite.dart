abstract class Component {
  Component? _parent;

  Component? get parent => _parent;
  set parent(Component? parent) => _parent = parent;

  void add(Component component) {}
  void remove(Component component) {}
  bool isComposite() => false;
  String operation();
}

class Leaf extends Component {
  @override
  String operation() => 'Leaf';
}

class Composite extends Component {
  List<Component> _children = [];

  @override
  void add(Component component) {
    _children.add(component);
  }

  @override
  void remove(Component component) {
    _children.remove(component);
    component.parent = null;
  }

  @override
  bool isComposite() => true;

  @override
  String operation() {
    List<String> result = [];
    for (final child in _children) {
      result.add(child.operation());
    }
    return 'Branch(${result.join('+')})';
  }
}
