import 'dart:ffi';
import 'dart:io';

import 'generated_bindings.dart';

final HelloGo helloGoCore = HelloGo(dylib);

DynamicLibrary _openDynamicLibrary() {
  if (Platform.isAndroid) {
    return DynamicLibrary.open('hello.so');
  } else if (Platform.isLinux) {
    return DynamicLibrary.open('lib/shared/hello_golang/build/hello.so');
  }
  return DynamicLibrary.process();
}

DynamicLibrary dylib = _openDynamicLibrary();
