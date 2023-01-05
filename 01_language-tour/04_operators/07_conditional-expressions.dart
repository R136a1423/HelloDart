// https://dart.cn/guides/language/language-tour#conditional-expressionss

String playerName(String? name) => name ?? 'Guest';

void main(List<String> args) {
  bool isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  playerName('');
}
