import 'package:outlay/main/enviroments.dart';

import 'package:outlay/main/main_com.dart';

Future<void> mainDev() async {
  await mainCommon(Enviroments.dev);
}
