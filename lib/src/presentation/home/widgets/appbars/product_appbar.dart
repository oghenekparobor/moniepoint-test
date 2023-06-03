import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint/src/app/app.dart';
import 'package:moniepoint/src/config/theme/theme.dart';
import 'package:moniepoint/src/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductDetailAppbar extends StatelessWidget with PreferredSizeWidget {
  const ProductDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: padding.top,
        left: 10.w,
        right: 16.w,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          for (var e in context.read<HomeViewModel>().productDetailsActionItem)
            Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: SizedBox(
                height: 36.sp,
                width: 24.sp,
                child: Stack(
                  children: [
                    Align(
                      child: Image.asset(
                        e['img'] as String,
                        height: 48.sp,
                        width: 48.sp,
                      ),
                    ),
                    if (e['text'].toString().isNotEmpty)
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFE55986),
                            borderRadius: BorderRadius.circular(2.r),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 2.h,
                          ),
                          child: Text(
                            e['text'] as String,
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70.h);
}
