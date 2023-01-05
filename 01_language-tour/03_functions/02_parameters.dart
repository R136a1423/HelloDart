// https://dart.cn/guides/language/language-tour#parameters

/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool? bold, bool? hidden}) {}

/// Sets the [bold] and [hidden] flags ...
void _enableFlags({bool bold = false, bool hidden = false}) {}

String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

String _say(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}

void main(List<String> args) {
  enableFlags(bold: true, hidden: false);
  _enableFlags(bold: true);
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  assert(say('Bob', 'Howdy', 'smoke signal') ==
      'Bob says Howdy with a smoke signal');
  assert(_say('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');
  
}
