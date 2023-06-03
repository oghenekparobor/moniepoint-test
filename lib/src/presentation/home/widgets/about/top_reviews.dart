import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint/src/config/theme/theme.dart';
import 'package:moniepoint/src/presentation/home/widgets/about/review_tile.dart';

class TopReviews extends StatelessWidget {
  const TopReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Top Reviews',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    'Showing 3 0f 2.3k+ reviews',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.h,
              width: 120.w,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  Text(
                    'Popular',
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ],
        ),
        20.verticalSpace,
        for (var i = 0; i < 3; i++) const ReviewTile(),
        20.verticalSpace,
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(5.sp),
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_back_ios,
                size: 18.sp,
              ),
            ),
            15.horizontalSpace,
            for (var i in [1, 2, 3, 4])
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  i <= 3 ? '$i' : '.....',
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: i == 1 ? theme.primaryColor : Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            10.horizontalSpace,
            Container(
              padding: EdgeInsets.all(5.sp),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: .5,
                    blurRadius: 13,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 18.sp,
              ),
            ),
            const Spacer(),
            Text(
              'See more',
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.primaryColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        30.verticalSpace,
      ],
    );
  }
}
