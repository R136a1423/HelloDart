// https://dart.cn/guides/language/language-tour#abstract-classes
// This class is declared abstract and thus
// can't be instantiated.
abstract class AbstractContainer {
  // Define constructors, fields, methods...

  void updateChildren(); // Abstract method.
}

class Test extends AbstractContainer {
  @override
  void updateChildren() {
    print("hello world");
  }
}

void main(List<String> args) {
  var t = Test();
  t.updateChildren();
}
