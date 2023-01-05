// https://dart.cn/guides/libraries/library-tour#collections

void list_usage() {
  // List的使用
  // Create an empty list of strings.
  var grains = <String>[];
  assert(grains.isEmpty);
  // Create a list using a list literal.
  var fruits = ['apples', 'oranges'];
  // Add to a list.
  fruits.add('kiwis');
  // Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);
  // Get the list length.
  assert(fruits.length == 5);
  // Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);
  // Remove all elements from a list.
  fruits.clear();
  assert(fruits.isEmpty);
  // You can also create a List using one of the constructors.
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));
}

void list_index() {
  var fruits = ['apples', 'oranges'];

  // Access a list item by index.
  assert(fruits[0] == 'apples');

  // Find an item in a list.
  assert(fruits.indexOf('apples') == 0);
}

void list_sort() {
  var fruits = ['bananas', 'apples', 'oranges'];

  // Sort a list.
  fruits.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');
}

void list_generics() {
  // This list should contain only strings.
  var fruits = <String>[];

  fruits.add('apples');
  var fruit = fruits[0];
  assert(fruit is String);
}

void set_usage() {
  // Create an empty set of strings.
  var ingredients = <String>{};

  // Add new items to it.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

  // Adding a duplicate item has no effect.
  ingredients.add('gold');
  assert(ingredients.length == 3);

  // Remove an item from a set.
  ingredients.remove('gold');
  assert(ingredients.length == 2);

  // You can also create sets using one of the constructors.
  var atomicNumbers = Set.from([79, 22, 54]);
}

void set_check() {
  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  // Check whether an item is in the set.
  assert(ingredients.contains('titanium'));

  // Check whether all the items are in the set.
  assert(ingredients.containsAll(['titanium', 'xenon']));
}

void set_operation() {
  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  // Create the intersection of two sets.
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));
}

void map_usage() {
  // Maps often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  // Maps can be built from a constructor.
  var searchTerms = Map();

  // Maps are parameterized types; you can specify what
  // types the key and value should be.
  var nobleGases = Map<int, String>();
}

void map_change() {
  var nobleGases = {54: 'xenon'};

  // Retrieve a value with a key.
  assert(nobleGases[54] == 'xenon');

  // Check whether a map contains a key.
  assert(nobleGases.containsKey(54));

  // Remove a key and its value.
  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));
}

void map_search() {
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  // Get all the keys as an unordered collection (an Iterable).
  var keys = hawaiianBeaches.keys;

  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));

  // Get all the values as an unordered collection
  // (an Iterable of Lists).
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('Waikiki')));
}

void map_check() {
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(!hawaiianBeaches.containsKey('Florida'));
}

void map_create_key_value() {
  var teamAssignments = <String, String>{};
  teamAssignments.putIfAbsent('Catcher', () => "pickToughestKid");
  assert(teamAssignments['Catcher'] != null);
}

void iterable_usage() {
  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  assert(coffees.isEmpty);
  assert(teas.isNotEmpty);

  teas.forEach((tea) => print('I drink $tea'));

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
    // I want to visit Oahu and swim at
    // [Waikiki, Kailua, Waimanalo], etc.
  });

  var loudTeas = teas.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

  var loudTeas_ = teas.map((tea) => tea.toUpperCase()).toList();

  // Chamomile is not caffeinated.
  bool isDecaffeinated(String teaName) => teaName == 'chamomile';

  // Use where() to find only the items that return true from the provided function.
  var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
  // or teas.where(isDecaffeinated)

  // Use any() to check whether at least one item in the collection satisfies a condition.
  assert(teas.any(isDecaffeinated));

  // Use every() to check whether all the items in a collection satisfy a condition.
  assert(!teas.every(isDecaffeinated));
}

void main(List<String> args) {
  list_usage();
  list_index();
  list_sort();
  list_generics();

  set_usage();
  set_check();
  set_operation();

  map_usage();
  map_change();
  map_search();
  map_check();
  map_create_key_value();

  iterable_usage();
}
