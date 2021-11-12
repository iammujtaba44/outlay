import 'package:outlay/utils/plugins.dart';
import 'package:outlay/utils/text_widget.dart';
import 'package:outlay/utils/tile_widget.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: APPThemes.lightGrey,
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w, top: 6.0.h),
          children: [
            Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  textWidget(
                      text: 'Good Morning!',
                      fontSize: 10.0.sp,
                      fontWeight: FontWeight.w400,
                      color: APPThemes.darkGrey),
                  textWidget(
                      text: 'Raheel Zain',
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold),
                ]),
                const Spacer(),
                CircleAvatar(
                  radius: 4.0.w,
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.notifications,
                    color: APPThemes.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.0.h,
            ),
            Container(
                height: 30.0.h,
                decoration: const BoxDecoration(
                  color: APPThemes.black,
                )),
            SizedBox(
              height: 7.0.h,
            ),
            textWidget(
                text: 'Transactions',
                fontSize: 14.0.sp,
                fontWeight: FontWeight.bold),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TileWidget(
                    title: 'Payment',
                    amount: '\$100',
                    isExpense: index % 2 == 0,
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 7.0,
                  );
                }),
            SizedBox(
              height: 3.0.h,
            ),
          ],
        ));
  }
}
