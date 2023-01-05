// https://dart.cn/guides/libraries/library-tour#trigonometry
import 'dart:math';

void main(List<String> args) {
  // Cosine
  assert(cos(pi) == -1.0);

// Sine
  var degrees = 30;
  var radians = degrees * (pi / 180);
// radians is now 0.52359.
  var sinOf30degrees = sin(radians);
// sin 30° = 0.5
  assert((sinOf30degrees - 0.5).abs() < 0.01);
}
