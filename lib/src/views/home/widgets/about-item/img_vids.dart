
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/src/config/theme/theme.dart';
import 'package:moniepoint_test/src/viewmodel/model/product.dart';

class ImagesVideos extends StatelessWidget {
  const ImagesVideos({
    super.key,
    required this.cloth,
  });

  final ProductModel cloth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Reviews with images & videos',
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        20.verticalSpace,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          child: Row(
            children: [
              for (var i in cloth.images)
                GestureDetector(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: 70.w,
                    height: 70.h,
                    margin: EdgeInsets.only(right: 16.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      image: DecorationImage(
                        image: NetworkImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
        25.verticalSpace,
        const Divider(),
      ],
    );
  }
}
