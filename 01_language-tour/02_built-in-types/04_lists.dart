// https://dart.cn/guides/language/language-tour#lists

void lists() {
  var list = [1, 2, 3];
  print(list);
}

void lists_newline() {
  var list = [
    'Car',
    'Boat',
    'Plane',
  ];
  print(list);
}

void list_index() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);
}

void list_const() {
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.
}

void list_merge() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);
}

void list_null() {
  var list = null;
  var list2 = [0, ...?list];
  assert(list2.length == 1);
}

void list_if() {
  const promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}

void list_for() {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
}

void main(List<String> args) {
  lists();
  lists_newline();
  list_index();
  list_const();
  list_merge();
  list_null();
  list_if();
  list_for();
}
