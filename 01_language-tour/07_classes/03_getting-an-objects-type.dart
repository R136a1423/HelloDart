// https://dart.cn/guides/language/language-tour#getting-an-objects-type

class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    this.x = x;
    this.y = y;
  }
}

void main(List<String> args) {
  var a = Point(1, 1);
  print('The type of a is ${a.runtimeType}');
}
