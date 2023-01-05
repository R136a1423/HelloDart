import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';

void main(List<String> arguments) {
  exitCode = 0; // presume success
  final parser = ArgParser()..addFlag('force', negatable: false, abbr: 'f');

  ArgResults argResults = parser.parse(arguments);
  final paths = argResults.rest;

  drm(paths, force: argResults["force"] as bool);
}

Future<void> drm(List<String> paths,{bool force = false}) async {
  if (paths.isEmpty) {
    await stdin.pipe(stdout);
  }else{
    for (final path in paths) {
      try {
        if (force){
          File(path).delete();
        }
        else{
          var time = new DateTime.now().millisecondsSinceEpoch;
          File(path).rename("/workspace/HelloDart/Recycle/${time}-${path}");
        }
      } catch (_) {
        await _handleError(path);
      }
    }
  }
}

Future<void> _handleError(String path) async {
  if (await FileSystemEntity.isDirectory(path)) {
    stderr.writeln('error: $path is a directory');
  } else {
    exitCode = 2;
  }
}