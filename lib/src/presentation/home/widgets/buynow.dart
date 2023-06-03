import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/src/config/theme/theme.dart';
import 'package:moniepoint_test/src/utils/constant/assets.dart';
import 'package:moniepoint_test/src/viewmodel/model/product.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({
    super.key,
    required this.cloth,
  });

  final ProductModel cloth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          right: 16.w,
          left: 16.h,
          top: 16.h,
          bottom: Platform.isIOS ? 40.h : 16.h,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Total price',
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  5.verticalSpace,
                  Text(
                    cloth.price,
                    style: theme.textTheme.displayMedium!.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: theme.primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.r),
                          bottomLeft: Radius.circular(8.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            kCartEmpty,
                            color: Colors.white,
                            width: 24.sp,
                            height: 24.sp,
                          ),
                          8.horizontalSpace,
                          Text(
                            '1',
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2B2D41),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.r),
                          bottomRight: Radius.circular(8.r),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Buy now',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
