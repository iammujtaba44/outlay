import 'package:outlay/main/enviroments.dart';

import 'package:outlay/main/main_com.dart';

Future<void> mainProd() async {
  await mainCommon(Enviroments.prod);
}
