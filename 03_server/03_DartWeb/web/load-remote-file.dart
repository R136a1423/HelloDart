// （https://dart.dev/tutorials/web/fetch-data#using-getString-function）

import 'dart:async';
import 'dart:convert';
import 'dart:html';

final UListElement wordList = querySelector('#wordList') as UListElement;

void main() {
  querySelector('#getWords')!.onClick.listen(makeRequest);
}

Future<void> makeRequest(Event _) async {
  const path = 'portmanteaux.json';
  // 此处path是一个相对路径
  try {
    // Make the GET request
    final jsonString = await HttpRequest.getString(path);
    // The request succeeded. Process the JSON.
    processResponse(jsonString);
  } catch (e) {
    // The GET request failed. Handle the error.
    print("Couldn't open $path");
    wordList.children.add(LIElement()..text = 'Request failed.');
  }
}

void processResponse(String jsonString) {
  for (final portmanteau in json.decode(jsonString) as List<dynamic>) {
    // 试试用 SET 消除重复的元素？
    wordList.children.add(LIElement()..text = portmanteau as String); // 链式调用
  }
}
