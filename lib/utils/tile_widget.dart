import 'package:flutter/material.dart';
import 'package:outlay/utils/plugins.dart';

class TileWidget extends StatelessWidget {
  TileWidget({
    Key? key,
    this.title,
    this.subtitle,
    this.amount,
    this.isExpense = false,
  }) : super(key: key);

  String? title;
  String? subtitle;
  String? amount;
  bool isExpense;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.0.w, vertical: 2.0.h),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          isExpense
              ? CircleAvatar(
                  radius: 5.0.w,
                  backgroundColor: APPThemes.dimGreen,
                  child: const ImageIcon(
                    AssetImage('assets/icons/ic_inc.png'),
                    color: APPThemes.dimGreenDarker,
                  ),
                )
              : CircleAvatar(
                  radius: 5.0.w,
                  backgroundColor: APPThemes.offWhite,
                  child: const ImageIcon(
                    AssetImage('assets/icons/ic_dec.png'),
                    color: APPThemes.offWhiteDarker,
                  ),
                ),
          SizedBox(
            width: 4.0.w,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            textWidget(
              text: title ?? 'Dribble Pro',
              fontSize: 12.0.sp,
              fontWeight: FontWeight.bold,
              // color:
            ),
            textWidget(
                text: subtitle ?? '18 Sep 2021',
                fontSize: 10.0.sp,
                color: APPThemes.darkGrey),
          ]),
          const Spacer(),
          textWidget(
              text: amount ?? '-PKR 145',
              fontSize: 12.0.sp,
              fontWeight: FontWeight.bold,
              color: isExpense ? APPThemes.dimGreen : APPThemes.offWhite),
        ],
      ),
    );
  }
}
