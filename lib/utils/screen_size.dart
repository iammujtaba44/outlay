import 'package:flutter/material.dart';

// class ScreenSize {
//     static let width = UIScreen.main.bounds.size.width
//     static let height = UIScreen.main.bounds.size.height
//     static let maxLength = max(ScreenSize.width, ScreenSize.height)
//     static let minLength = min(ScreenSize.width, ScreenSize.height)
// }

class Responsive {
  // function reponsible for providing value according to screensize
  getResponsiveValue(
      {dynamic forShortScreen,
      dynamic forMediumScreen,
      dynamic forLargeScreen,
      dynamic forMobLandScapeMode,
      dynamic forTabletScreen,
      required BuildContext context}) {
    if (isLargeScreen(context)) {
      return forLargeScreen ?? forShortScreen;
    } else if (isMediumScreen(context)) {
      return forMediumScreen ?? forShortScreen;
    } else if (isTabletScreen(context)) {
      return forTabletScreen ?? forMediumScreen ?? forShortScreen;
    } else if (isSmallScreen(context) && isLandScapeMode(context)) {
      return forMobLandScapeMode ?? forShortScreen;
    } else {
      return forShortScreen;
    }
  }

  isLandScapeMode(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return true;
    } else {
      return false;
    }
  }

  static bool isLargeScreen(BuildContext context) {
    return getWidth(context) > 1200;
  }

  static bool isSmallScreen(BuildContext context) {
    return getWidth(context) < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return getWidth(context) > 800 && getWidth(context) < 1200;
  }

  static bool isTabletScreen(BuildContext context) {
    return getWidth(context) > 450 && getWidth(context) < 800;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
