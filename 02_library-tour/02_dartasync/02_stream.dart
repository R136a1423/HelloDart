// https://dart.cn/guides/libraries/library-tour#stream

import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) async {
  String searchPath = './hello';
  if (await FileSystemEntity.isDirectory(searchPath)) {
    final startingDir = Directory(searchPath);
    await for (final entity in startingDir.list()) {
      if (entity is File) {
        print("yes");
      }
    }
  } else {
    print("no");
  }

  var config = File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  inputStream.transform(utf8.decoder).transform(const LineSplitter()).listen(
      (String line) {
    print('Got ${line.length} characters from stream');
  }, onDone: () {
    print('file is now closed');
  }, onError: (e) {
    print(e);
  });
}
