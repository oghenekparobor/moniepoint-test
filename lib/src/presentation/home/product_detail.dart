import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint/src/config/theme/theme.dart';
import 'package:moniepoint/src/viewmodel/home_viewmodel.dart';
import 'package:moniepoint/src/viewmodel/model/product.dart';
import 'package:moniepoint/src/presentation/home/widgets/about/about_item.dart';
import 'package:moniepoint/src/presentation/home/widgets/appbars/product_appbar.dart';
import 'package:moniepoint/src/presentation/home/widgets/buynow.dart';
import 'package:moniepoint/src/presentation/home/widgets/product_image.dart';
import 'package:moniepoint/src/presentation/home/widgets/summary.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var cloth = ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
      appBar: const ProductDetailAppbar(),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
            ),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  15.verticalSpace,
                  SlideInUp(
                    delay: const Duration(milliseconds: 200),
                    duration: const Duration(milliseconds: 800),
                    child: ProductImage(cloth: cloth),
                  ),
                  15.verticalSpace,
                  SlideInUp(
                    delay: const Duration(milliseconds: 220),
                    duration: const Duration(milliseconds: 1000),
                    child: Summary(cloth: cloth),
                  ),
                  20.verticalSpace,
                  SlideInUp(
                    delay: const Duration(milliseconds: 240),
                    duration: const Duration(milliseconds: 1200),
                    child: Row(
                      children: [
                        for (var tab in context.read<HomeViewModel>().detailTab)
                          Expanded(
                            child: GestureDetector(
                              child: Column(
                                children: [
                                  Text(
                                    tab,
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: context
                                                  .read<HomeViewModel>()
                                                  .currentDetailTab ==
                                              tab
                                          ? theme.primaryColor
                                          : Colors.grey,
                                    ),
                                  ),
                                  8.verticalSpace,
                                  Container(
                                    width: double.infinity,
                                    height: 2.h,
                                    color: context
                                                .read<HomeViewModel>()
                                                .currentDetailTab ==
                                            tab
                                        ? theme.primaryColor
                                        : Colors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  SlideInUp(
                    delay: const Duration(milliseconds: 260),
                    duration: const Duration(milliseconds: 1400),
                    child: AboutItem(cloth: cloth),
                  ),
                  120.verticalSpace,
                ],
              ),
            ),
          ),
          SlideInUp(
            delay: const Duration(milliseconds: 260),
            duration: const Duration(milliseconds: 1200),
            child: BuyNow(cloth: cloth),
          ),
        ],
      ),
    );
  }
}
