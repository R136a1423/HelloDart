// https://dart.cn/guides/language/language-tour#while-and-do-while
bool isDone() => true;

void main(List<String> args) {
  while (!isDone()) {
    print('hello world');
  }

  do {
    print('hello world');
  } while (!isDone());
}
