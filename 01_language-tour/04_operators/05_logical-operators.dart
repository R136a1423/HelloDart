// https://dart.cn/guides/language/language-tour#logical-operators

void main(List<String> args) {
  var done = false;
  var col = 0;
  if (!done && (col == 0 || col == 3)) {
    print('yes');
  }
}
