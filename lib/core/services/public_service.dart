import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class PublicService extends ChangeNotifier {
  //PublicService singleton constructor
  static final PublicService _instance = PublicService._internal();
  factory PublicService() => _instance;
  PublicService._internal();

  String? _appName;
  String? _packageName;
  String? _version;
  String? _buildNumber;

  String get appName => _appName!;

  set appName(String value) {
    _appName = value;
    notifyListeners();
  }

  String get packageName => _packageName!;

  set packageName(String value) {
    _packageName = value;
    notifyListeners();
  }

  String get version => _version!;

  set version(String value) {
    _version = value;
    notifyListeners();
  }

  String get buildNumber => _buildNumber!;

  set buildNumber(String value) {
    _buildNumber = value;
    notifyListeners();
  }

  initializeVersioning() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    appName = packageInfo.appName;
    packageName = packageInfo.packageName;
    version = packageInfo.version;
    buildNumber = packageInfo.buildNumber;
  }
}
