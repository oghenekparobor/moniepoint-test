import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/src/config/theme/theme.dart';
import 'package:moniepoint_test/src/utils/extension/string.dart';
import 'package:moniepoint_test/src/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 15.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var i = 0; i < context.read<HomeViewModel>().bars.length; i++)
            InkWell(
              onTap: () {
                setState(() {
                  context.read<HomeViewModel>().current = i;
                });
              },
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: Column(
                  key: ValueKey(
                    '${context.read<HomeViewModel>().bars[i]['icon']}${i == context.read<HomeViewModel>().current ? '-filled' : '-lined'}',
                  ),
                  children: [
                    Image.asset(
                      '${context.read<HomeViewModel>().bars[i]['icon']}${i == context.read<HomeViewModel>().current ? '-filled' : '-lined'}'
                          .icon,
                      height: 20.sp,
                      width: 20.sp,
                    ),
                    5.verticalSpace,
                    Text(
                      context.read<HomeViewModel>().bars[i]['label'] as String,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: i == context.read<HomeViewModel>().current
                            ? Colors.black
                            : Colors.grey,
                        fontWeight: i == context.read<HomeViewModel>().current
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
