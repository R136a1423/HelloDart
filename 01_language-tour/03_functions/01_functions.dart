// https://dart.cn/guides/language/language-tour#functions

var _nobleGases = [1, 2, 3];

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

bool _isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

void main(List<String> args) {
  isNoble(1);
  _isNoble(2);
}
