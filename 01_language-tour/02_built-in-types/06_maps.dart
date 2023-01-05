// https://dart.cn/guides/language/language-tour#maps
void maps_create() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  print(gifts);
  print(nobleGases);
}

void maps() {
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);
}

void maps_add() {
  var gifts = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds'; // Add a key-value pair
}

void maps_get() {
  var gifts = {'first': 'partridge'};
  assert(gifts['first'] == 'partridge');
}

void maps_length() {
  var gifts = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds';
  assert(gifts.length == 2);
}

void maps_const() {
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  print(constantMap);
  // constantMap[2] = 'Helium'; // This line will cause an error.
}

void main(List<String> args) {
  maps_create();
  maps();
  maps_add();
  maps_get();
  maps_length();
  maps_const();
}
