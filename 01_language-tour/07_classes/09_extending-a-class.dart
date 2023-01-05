// https://dart.cn/guides/language/language-tour#extending-a-class

class Television {
  void turnOn() {
    print("Television");
  }
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
  }
}

void main(List<String> args) {
  var smartTelevision = SmartTelevision();
  smartTelevision.turnOn();
}
