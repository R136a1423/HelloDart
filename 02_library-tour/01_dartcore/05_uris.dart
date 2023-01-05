// https://dart.cn/guides/libraries/library-tour#uris
void uri_usage() {
  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message');

  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);
}

void uri_compoent_usage() {
  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeComponent(uri);
  assert(encoded == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');

  var decoded = Uri.decodeComponent(encoded);
  assert(uri == decoded);
}

void uri_parse() {
  var uri = Uri.parse('https://example.org:8080/foo/bar#frag');

  assert(uri.scheme == 'https');
  assert(uri.host == 'example.org');
  assert(uri.path == '/foo/bar');
  assert(uri.fragment == 'frag');
  assert(uri.origin == 'https://example.org:8080');
}

void uri_create() {
  var uri = Uri(
      scheme: 'https', host: 'example.org', path: '/foo/bar', fragment: 'frag');
  assert(uri.toString() == 'https://example.org/foo/bar#frag');
}

void main(List<String> args) {
  uri_usage();
  uri_compoent_usage();
  uri_parse();
  uri_create();
}
