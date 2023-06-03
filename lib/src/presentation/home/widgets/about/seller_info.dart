import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/src/config/theme/theme.dart';
import 'package:moniepoint_test/src/utils/constant/assets.dart';

class SellerInfromation extends StatelessWidget {
  const SellerInfromation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Seller information',
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        15.verticalSpace,
        Row(
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey.shade400,
                    child: Text(
                      'Thrifting\nStore',
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: theme.scaffoldBackgroundColor,
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        maxRadius: 8.r,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
            20.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thrifting_Store',
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                  10.verticalSpace,
                  Row(
                    children: [
                      Text(
                        'Active 5 min ago',
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp,
                        ),
                      ),
                      10.horizontalSpace,
                      Container(
                        height: 15,
                        width: 1,
                        color: Colors.grey,
                      ),
                      10.horizontalSpace,
                      Expanded(
                        child: Text(
                          '96.7% Positive feedback',
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  15.verticalSpace,
                  Container(
                    width: 130.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: theme.primaryColor,
                        width: 1.5.w,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          kCartEmpty,
                          width: 18.w,
                          height: 18.h,
                          color: theme.primaryColor,
                        ),
                        5.horizontalSpace,
                        Text(
                          'Visit store',
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        25.verticalSpace,
        const Divider(),
      ],
    );
  }
}
