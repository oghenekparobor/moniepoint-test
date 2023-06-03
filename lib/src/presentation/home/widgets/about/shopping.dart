import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint/src/config/theme/theme.dart';

class ShippingInfo extends StatelessWidget {
  const ShippingInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Shippings information:',
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        15.verticalSpace,
        Row(
          children: [
            Text(
              'Delivery:',
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: Text(
                'Shipping from Jakarta, Indonesia',
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        10.verticalSpace,
        Row(
          children: [
            Text(
              'Shipping:',
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: Text(
                'FREE International Shipping',
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        10.verticalSpace,
        Row(
          children: [
            Text(
              'Arrive:',
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: Text(
                'Estimated arrival on 25th Oct, 2023',
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        25.verticalSpace,
        const Divider(),
      ],
    );
  }
}
