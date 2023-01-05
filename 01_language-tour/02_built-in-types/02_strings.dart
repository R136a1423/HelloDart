// https://dart.cn/guides/language/language-tour#strings

void string_en() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  print(s1);
  print(s2);
  print(s3);
  print(s4);
}

void string_zh() {
  var s1 = '使用单引号创建字符串字面量。';
  var s2 = "双引号也可以用于创建字符串字面量。";
  var s3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
  var s4 = "而在双引号中则不需要使用转义与单引号冲突的字符串：'";
  print(s1);
  print(s2);
  print(s3);
  print(s4);
}

void string_en_variables() {
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');
}

void string_zh_variables() {
  var s = '字符串插值';

  assert('Dart 有$s，使用起来非常方便。' == 'Dart 有字符串插值，使用起来非常方便。');
  assert('使用${s.substring(3, 5)}表达式也非常方便' == '使用插值表达式也非常方便。');
}

void string_en_add() {
  var s1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s1 ==
      'String concatenation works even over '
          'line breaks.');

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');
}

void string_zh_add() {
  var s1 = '可以拼接'
      '字符串'
      "即便它们不在同一行。";
  assert(s1 == '可以拼接字符串即便它们不在同一行。');

  var s2 = '使用加号 + 运算符' + '也可以达到相同的效果。';
  assert(s2 == '使用加号 + 运算符也可以达到相同的效果。');
}

void string_en_also() {
  var s1 = '''
  You can create
  multi-line strings like this one.
  ''';

  var s2 = """This is also a
  multi-line string.""";
  print(s1);
  print(s2);
}

void string_zh_also() {
  var s1 = '''
  你可以像这样创建多行字符串。
  ''';

  var s2 = """这也是一个多行字符串。""";

  print(s1);
  print(s2);
}

void string_en_raw() {
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);
}

void string_zh_raw() {
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);
}

void strings() {
  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';

  print(validConstString);
  // print(invalidConstString);
}

void main(List<String> args) {
  string_en();
  string_zh();
  string_en_variables();
  string_zh_variables();
  string_en_add();
  string_zh_add();
  string_en_also();
  string_zh_also();
  string_en_raw();
  string_zh_raw();
  strings();
}
