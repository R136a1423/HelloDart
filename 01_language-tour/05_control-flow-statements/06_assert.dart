// https://dart.cn/guides/language/language-tour#assert

void main(List<String> args) {
  // Make sure the variable has a non-null value.
  var text = "abs";
  assert(text != null);

  // Make sure the value is less than 100.
  var number = 101;
  assert(number < 100);

  // Make sure this is an https URL.
  var urlString = "https://www.baidu.com";
  assert(urlString.startsWith('https'));

  assert(urlString.startsWith('https'),
      'URL ($urlString) should start with "https".');
}
