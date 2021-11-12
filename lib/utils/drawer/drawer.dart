import 'package:flutter/material.dart';
import 'package:outlay/core/providers/providers.dart';
import 'package:outlay/core/services/public_service.dart';
import 'package:outlay/utils/drawer/drawer_collapse.dart';
import 'package:outlay/utils/drawer/drawer_item.dart';
import 'package:outlay/utils/drawer/drawer_user.dart';
import 'package:outlay/utils/plugins.dart';
import 'package:provider/src/provider.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key, required this.closeFunction}) : super(key: key);
  final Function closeFunction;

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late double height;
  late double width;
  double backgroundOpacity = 0;
  bool isCollapsed = true;
  bool isCollapsedAfterSec = true;
  late PublicService _service;

  void initializeAnimation() {
    _controller = AnimationController(
      duration: Duration(
        milliseconds: 500,
      ),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    );
    startAnimation();
  }

  void startAnimation() {
    _controller.forward();
    _animation.addListener(() {
      setState(() {
        backgroundOpacity = 0.7 * _animation.value;
      });
    });
  }

  void stopAnimation() {
    _controller.stop();
  }

  void reverseAnimation() {
    _controller.reverse();
  }

  void onCollapseTap() {
    if (isCollapsed) {
      Future.delayed(Duration(
        milliseconds: 70,
      )).then((value) {
        setState(() {
          isCollapsedAfterSec = !isCollapsedAfterSec;
        });
      });
    } else if (!isCollapsed) {
      setState(() {
        isCollapsedAfterSec = !isCollapsedAfterSec;
      });
    }
    setState(() {
      isCollapsed = !isCollapsed;
    });
  }

  @override
  void initState() {
    super.initState();
    initializeAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    _service = context.watch();
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(
        backgroundOpacity,
      ),
      body: Row(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (ctx, child) {
              return AnimatedContainer(
                duration: Duration(
                  milliseconds: 70,
                ),
                width: (isCollapsed)
                    ? width * .2 * _animation.value
                    : width * .5 * _animation.value,
                margin: EdgeInsets.only(
                  left: width * .06 * _animation.value,
                  top: height * .05,
                  bottom: height * .05,
                ),
                decoration: BoxDecoration(
                  color: APPThemes.shadedBlack,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: (_animation.value > 0.7)
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          DrawerUser(
                            afterCollapse: 'RZ',
                            beforeCollapse: 'Raheel Zain',
                            isCollapsed: isCollapsed,
                          ),

                          DrawerItem(
                            icon: const Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 4',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 5',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 6',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          DrawerItem(
                            icon: Icon(
                              Icons.bookmarks,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: Text(
                              'Item 7',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            isCollapsed: isCollapsedAfterSec,
                          ),
                          Container(
                            transform:
                                Matrix4.translationValues(-10.0, 0.0, 0.0),
                            margin: EdgeInsets.only(left: 4.0.w, top: 6.0.h),
                            child: Column(
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // /  crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                textWidget(
                                    text: 'Version',
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w400),
                                textWidget(
                                    text:
                                        '${_service.version}+${_service.buildNumber}',
                                    color: Colors.white,
                                    fontSize: 10.0.sp,
                                    fontWeight: FontWeight.w300),
                              ],
                            ),
                          ),
                          const Spacer(),
                          // * Bottom Toggle Button
                          if (_controller.value >= 1)
                            DrawerCollapse(
                              isCollapsed: isCollapsed,
                              onTap: onCollapseTap,
                            ),
                        ],
                      )
                    : SizedBox(),
              );
            },
          ),

          // * The left area on the side which will used
          // * to close the drawer when tapped

          Expanded(
            flex: 3,
            child: Container(
              child: GestureDetector(
                onTap: () {
                  reverseAnimation();
                  Future.delayed(
                    Duration(
                      milliseconds: 500,
                    ),
                  ).then(
                    (value) => widget.closeFunction(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
