import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:moniepoint/src/config/theme/theme.dart';

class ReviewsRatings extends StatelessWidget {
  const ReviewsRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Reviews & Ratings',
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        15.verticalSpace,
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '4.9 ',
                            style: theme.textTheme.displayLarge!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.sp,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              ' / 5.0',
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        children: List.of(
                          [1, 2, 3, 4, 5].map(
                            (e) => Icon(
                              Typicons.star_filled,
                              color:
                                  e < 5 ? Colors.amber : Colors.grey.shade400,
                              size: 18.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    '2.3k+ Reviews',
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (var i in [5, 4, 3, 2, 1])
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Row(
                        children: [
                          Icon(
                            Typicons.star_filled,
                            size: 18.sp,
                            color: Colors.amber,
                          ),
                          5.horizontalSpace,
                          Text(
                            i.toString(),
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          5.horizontalSpace,
                          Expanded(
                            child: LayoutBuilder(
                              builder: (p0, p1) => Container(
                                width: double.infinity,
                                height: 8.w,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: p1.maxWidth * (0.15 * i),
                                      height: 8.w,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          5.horizontalSpace,
                          Text(
                            '${i * 2}k',
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
