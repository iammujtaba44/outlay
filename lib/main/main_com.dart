import 'package:outlay/main/enviroments.dart';

Future<void> mainCommon(String env) async {
  switch (env) {
    case Enviroments.dev:
      // await _initDev();
      break;
    case Enviroments.prod:
      // await _initDev();
      break;
  }

  // runApp();
}
