import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:moniepoint/src/config/theme/theme.dart';
import 'package:moniepoint/src/viewmodel/model/product.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.cloth,
  });

  final ProductModel cloth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Icon(
              Icons.store,
              color: Colors.grey,
              size: 18.sp,
            ),
            8.horizontalSpace,
            Text(
              'Loremispum.id',
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.grey,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
        10.verticalSpace,
        Text(
          cloth.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.displayMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        15.verticalSpace,
        Row(
          children: [
            Icon(
              Typicons.star_filled,
              color: Colors.amber,
              size: 15.sp,
            ),
            8.horizontalSpace,
            Text(
              '4.9 Rating',
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.black54,
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Container(
              width: 5.w,
              height: 5.h,
              decoration: const BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
            ),
            const Spacer(),
            Text(
              '2.3k+ Reviews',
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.black54,
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Container(
              width: 5.w,
              height: 5.h,
              decoration: const BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
            ),
            const Spacer(),
            Text(
              '2.9k+ Sold',
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.black54,
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
