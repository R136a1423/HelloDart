// https://dart.cn/guides/language/language-tour#functions-as-first-class-objects

void printElement(int element) {
  print(element);
}

var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';

void main(List<String> args) {
  var list = [1, 2, 3];
  // Pass printElement as a parameter.
  list.forEach(printElement);
  assert(loudify('hello') == '!!! HELLO !!!');
}
