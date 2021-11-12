// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:outlay/main/enviroments.dart';
import 'package:outlay/pages/check.dart';
import 'package:outlay/pages/dashboard/dashboard.dart';
import 'package:sizer/sizer.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();

  switch (env) {
    case Enviroments.dev:
      // await _initDev();
      break;
    case Enviroments.prod:
      // await _initDev();
      break;
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Outlay',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Dashboard(),
      );
    });
  }
}
