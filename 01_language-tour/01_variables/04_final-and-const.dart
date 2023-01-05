// https://dart.cn/guides/language/language-tour#final-and-const

void main(List<String> args) {
  final_variable();
  const_variable();
  other_operation();
}

void final_variable() {
  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  // name = 'Alice'; // final也不能修改
}

void const_variable() {
  const bar = 1000000;
  const double atm = 1.01325 * bar;

  var foo = const [];
  // final bar = const [];
  const baz = [];
  // baz = [42]; // 常量不能修改

  foo = [1, 2, 3];
}

void other_operation() {
  const Object i = 3;
  const list = [i as int]; // 类型检查
  const map = {if (i is int) i: 'int'};
  print(map);
  const set = {if (list is List<int>) ...list};
  print(set);
}
