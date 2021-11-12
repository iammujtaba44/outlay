import 'package:outlay/utils/plugins.dart';

Text textWidget(
    {required String text,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight}) {
  return Text(text,
      style: TextStyle(
        fontSize: fontSize ?? 12.0.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? APPThemes.black,
      ));
}
