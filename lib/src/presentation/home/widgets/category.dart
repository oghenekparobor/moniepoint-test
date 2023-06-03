import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint/src/app/app.dart';
import 'package:moniepoint/src/config/theme/theme.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          height: 100.h,
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const PageScrollPhysics(
              parent: ClampingScrollPhysics(),
            ),
            child: Row(
              children: [
                for (var i = 0; i < 15; i++)
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.sp),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: const Icon(Icons.dashboard),
                        ),
                        8.verticalSpace,
                        Text(
                          'Category',
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: Colors.grey,
                            fontSize: 10.sp,
                          ),
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
        Container(
          width: size.width,
          height: 20.h,
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < 3; i++)
                Container(
                  width: i == 0 ? 20 : 5,
                  height: 5,
                  margin: EdgeInsets.only(right: 2.w),
                  decoration: BoxDecoration(
                    color: i == 0 ? Colors.black : Colors.grey,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
