import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint/src/app/app.dart';
import 'package:moniepoint/src/config/theme/theme.dart';
import 'package:moniepoint/src/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, value, child) => AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        curve: Curves.fastLinearToSlowEaseIn,
        color: value.appBarColor,
        padding: EdgeInsets.only(
          top: padding.top * (Platform.isIOS ? 1.2 : 2.2),
          left: 16.w,
          right: 16.w,
          bottom: 16.w,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Search...',
                  hintStyle: theme.textTheme.bodySmall!.copyWith(
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            15.horizontalSpace,
            for (var e in context.read<HomeViewModel>().appBarActionItem)
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: SizedBox(
                  height: 36.sp,
                  width: 24.sp,
                  child: Stack(
                    children: [
                      Align(
                        child: Image.asset(
                          e['img'] as String,
                          height: 24.sp,
                          width: 24.sp,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFE55986),
                            borderRadius: BorderRadius.circular(2.r),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 2.h,
                          ),
                          child: Text(
                            e['text'] as String,
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
