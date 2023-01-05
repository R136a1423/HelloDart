// https://dart.cn/guides/language/language-tour#using-constructors

class ImmutablePoint {
  final double x;
  final double y;

  const ImmutablePoint(this.x, this.y);
}

void main(List<String> args) {
  var a = const ImmutablePoint(1, 1);
  var b = const ImmutablePoint(1, 1);

  assert(identical(a, b)); // They are the same instance!

  // Only one const, which establishes the constant context.
  const pointAndLine = {
    'point': [ImmutablePoint(0, 0)],
    'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],
  };

  var c = const ImmutablePoint(1, 1); // Creates a constant
  var d = ImmutablePoint(1, 1); // Does NOT create a constant

  assert(!identical(c, d)); // NOT the same instance!
}
