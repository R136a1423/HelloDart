// https://dart.cn/guides/libraries/library-tour#random-numbers
import 'dart:math';

void main(List<String> args) {
  var random = Random();
  random.nextDouble(); // Between 0.0 and 1.0: [0, 1)
  random.nextInt(10); // Between 0 and 9.

  var _random = Random();
  _random.nextBool(); // true or false
}
