//https://dart.cn/guides/libraries/library-tour#strings-and-regular-expressions

void main(List<String> args) {
  // 在字符串内查找特定字符串的位置，以及检查字符串是否以特定字符串作为开头或结尾
  // Check whether a string contains another string.
  assert('Never odd or even'.contains('odd'));
  // Does a string start with another string?
  assert('Never odd or even'.startsWith('Never'));
  // Does a string end with another string?
  assert('Never odd or even'.endsWith('even'));
  // Find the location of a string inside a string.
  assert('Never odd or even'.indexOf('odd') == 6);

  // 可以获取字符串中的子字符串或者将一个字符串分割为子字符串列表
  // Grab a substring.
  assert('Never odd or even'.substring(6, 9) == 'odd');
  // Split a string using a string pattern.
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');
  // Get a UTF-16 code unit (as a string) by index.
  assert('Never odd or even'[0] == 'N');
  // Use split() with an empty string parameter to get
  // a list of all characters (as Strings); good for
  // iterating.
  for (final char in 'hello'.split('')) {
    print(char);
  }
  // Get all the UTF-16 code units in the string.
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);

  // 可以对字符串的首字母大小写进行转换
  // Convert to uppercase.
  assert('web apps'.toUpperCase() == 'WEB APPS');
  // Convert to lowercase.
  assert('WEB APPS'.toLowerCase() == 'web apps');

  // 使用 trim() 移除首尾空格
  // Trim a string.
  assert('  hello  '.trim() == 'hello');
  // 使用 isEmpty 检查一个字符串是否为空
  // Check whether a string is empty.
  assert(''.isEmpty);
  // Strings with only white space are not empty.
  assert('  '.isNotEmpty);

  // 替换部分字符串
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  // greetingTemplate didn't change.
  assert(greeting != greetingTemplate);

  // 构建一个字符串
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');
  var fullString = sb.toString();
  assert(fullString == 'Use a StringBuffer for efficient string creation.');

  // 正则表达式
  // Here's a regular expression for one or more digits.
  var numbers = RegExp(r'\d+');
  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';
  // contains() can use a regular expression.
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));
  // Replace every match with another string.
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');

  // 直接使用类方法
  // Check whether the reg exp has a match in a string.
  assert(numbers.hasMatch(someDigits));
  // Loop through all matches.
  for (final match in numbers.allMatches(someDigits)) {
    print(match.group(0)); // 15, then 20
  }
}
