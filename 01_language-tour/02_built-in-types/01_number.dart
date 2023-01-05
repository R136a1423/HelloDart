// https://dart.cn/guides/language/language-tour#built-in-types
// https://dart.cn/guides/language/language-tour#numbers

void number() {
  var x = 1;
  var hex = 0xDEADBEEF;

  var y = 1.1;
  var exponents = 1.42e5;

  num z = 1;
  print(z);
  z += 2.5;
  print(z);

  double m = 1;
  print(m);
}

void change_type() {
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}

void bitwise_shift() {
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000
}

// 数字字面量为编译时常量。很多算术表达式只要其操作数是常量，则表达式结果也是编译时常量。

const msPerSecond = 1000;
const secondsUntilRetry = 5;
const msUntilRetry = secondsUntilRetry * msPerSecond;

void main(List<String> args) {
  number();
  change_type();
  bitwise_shift();
  print(msUntilRetry);
}
