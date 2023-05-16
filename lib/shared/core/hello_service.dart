import "package:ffi/ffi.dart";
import 'package:flutter_golang/shared/core/core.dart';

class HelloService {
  String myName(String name) {
    return helloGoCore
        .hello(name.toNativeUtf8().cast())
        .cast<Utf8>()
        .toDartString();
  }
}
