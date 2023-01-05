// https://dart.cn/guides/language/language-tour#anonymous-functions

void main(List<String> args) {
  const list = ['apples', 'bananas', 'oranges'];
  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });

  list.map((item) => item.toUpperCase())
      .forEach((item) => print('$item: ${item.length}'));
}
