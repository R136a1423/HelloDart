// https://dart.cn/guides/libraries/library-tour#future

findEntryPoint() {}

runExecutable(entryPoint) {}

flushThenExit(exitCode) {}

lengthyComputation() {}

expensiveWork(value) {}

Future costlyQuery(String s) {
  throw 'hello world';
}

Future<void> runUsingAsyncAwait() async {
  // ...
  var entryPoint = await findEntryPoint();
  var exitCode = await runExecutable(entryPoint);
  await flushThenExit(exitCode);
}

Future<void> deleteLotsOfFiles() async {
  print('deleteLotsOfFiles');
}

Future<void> copyLotsOfFiles() async {
  print(copyLotsOfFiles);
}

Future<void> checksumLotsOfOtherFiles() async {
  print(checksumLotsOfOtherFiles);
}

Future<void> main(List<String> args) async {
  var entryPoint = await findEntryPoint();
  try {
    var exitCode = await runExecutable(entryPoint);
    await flushThenExit(exitCode);
  } catch (e) {
    // Handle the error...
  }

  Future result = costlyQuery("url");
  result
      .then((value) => expensiveWork(value))
      .then((_) => lengthyComputation())
      .then((_) => print('Done!'))
      .catchError((exception) {
    /* Handle exception... */
  });

  await Future.wait([
    deleteLotsOfFiles(),
    copyLotsOfFiles(),
    checksumLotsOfOtherFiles(),
  ]);
  print('Done with all the long steps!');
}
