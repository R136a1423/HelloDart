// https://dart.cn/guides/language/language-tour#for-loops

void main(List<String> args) {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  var candidates = [1, 2, 3, 4];
  for (final candidate in candidates) {
    print(candidate);
  }

  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3
}
