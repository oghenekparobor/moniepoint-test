import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:moniepoint/src/config/theme/theme.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        20.verticalSpace,
        Row(
          children: [
            const CircleAvatar(),
            10.horizontalSpace,
            Expanded(
              child: Text(
                'Eren Y*****r',
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
            ),
            10.horizontalSpace,
            Row(
              children: [
                Icon(
                  Typicons.star_filled,
                  color: Colors.amber,
                  size: 18.sp,
                ),
                8.horizontalSpace,
                Text(
                  '5.0',
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                8.horizontalSpace,
                const Icon(Icons.more_horiz_outlined)
              ],
            )
          ],
        ),
        20.verticalSpace,
        Wrap(
          children: [
            'product in good condition',
            'fast delivery',
            'fast seller response',
          ]
              .map((e) => Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(
                        color: theme.primaryColor,
                        width: 1,
                      ),
                      color: theme.primaryColor.withOpacity(.2),
                    ),
                    child: Text(
                      e,
                      style: theme.textTheme.bodySmall!.copyWith(
                        fontSize: 9.sp,
                        color: theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))
              .toList(),
        ),
        20.verticalSpace,
        Text(
          'According to my expectations, this is the best\nThank you.',
          style: theme.textTheme.bodySmall!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        20.verticalSpace,
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: theme.primaryColor,
                    size: 18.sp,
                  ),
                  12.horizontalSpace,
                  Text(
                    'Helpful?',
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Yesterday',
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        20.verticalSpace,
        const Divider(),
      ],
    );
  }
}
