// https://dart.cn/guides/language/language-tour#late-variables

late String description;
// String description;

void main(List<String> args) {
  description = 'Feijoada!';
  print(description);
}
