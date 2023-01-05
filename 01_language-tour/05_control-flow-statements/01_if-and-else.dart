// https://dart.cn/guides/language/language-tour#control-flow-statements
// https://dart.cn/guides/language/language-tour#if-and-else

bool isRaining() => true;
bool isSnowing() => false;

class You {
  String bringRainCoat() => "bringRainCoat";
  String wearJacket() => "wearJacket";
}

class Car {
  String putTopDown() => "putTopDown";
}

void main(List<String> args) {
  var you = You();
  var car = Car();

  if (isRaining()) {
    you.bringRainCoat();
  } else if (isSnowing()) {
    you.wearJacket();
  } else {
    car.putTopDown();
  }
}
