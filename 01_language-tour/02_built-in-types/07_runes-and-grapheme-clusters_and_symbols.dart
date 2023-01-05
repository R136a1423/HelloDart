// https://dart.cn/guides/language/language-tour#runes-and-grapheme-clusters
// https://dart.cn/guides/language/language-tour#symbols

import 'package:characters/characters.dart';

void main() {
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  print('The last character: ${hi.characters.last}');
}
