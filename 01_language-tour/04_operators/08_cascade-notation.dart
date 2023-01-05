// https://dart.cn/guides/language/language-tour#cascade-notation
// https://dart.cn/guides/language/language-tour#other-operators

class Paint {
  var color;
  var strokeCap;
  var strokeWidth;
}

void main(List<String> args) {
  var paint = Paint()
    ..color = "black"
    ..strokeCap = "round"
    ..strokeWidth = 5.0;
}
