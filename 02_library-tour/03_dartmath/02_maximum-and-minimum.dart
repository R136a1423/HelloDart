// https://dart.cn/guides/libraries/library-tour#maximum-and-minimum
import 'dart:math';

void main(List<String> args) {
  assert(max(1, 1000) == 1000);
  assert(min(1, -1000) == -1000);
}
