// https://dart.dev/tutorials/web/low-level-html/add-elements

import 'dart:html';

final InputElement toDoInput = querySelector('#to-do-input') as InputElement;
final UListElement toDoList = querySelector('#to-do-list') as UListElement;

void main() {
  toDoInput.onChange.listen(addToDoItem);
}

void addToDoItem(Event e) {
  final newToDo = LIElement()..text = toDoInput.value; 
  // 链式调用（https://www.jianshu.com/p/35063261c583）
  // var a = new LIElement();
  // a.text = 'got: ${toDoInput.value}';
  // final newToDo = a;
  // toDoInput.value = '';
  toDoList.children.add(newToDo);
}
