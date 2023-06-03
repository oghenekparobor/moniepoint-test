import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/src/config/theme/theme.dart';
import 'package:moniepoint_test/src/viewmodel/home_viewmodel.dart';
import 'package:moniepoint_test/src/viewmodel/model/product.dart';
import 'package:moniepoint_test/src/presentation/home/widgets/about/brand.dart';
import 'package:moniepoint_test/src/presentation/home/widgets/about/description.dart';
import 'package:moniepoint_test/src/presentation/home/widgets/about/img_vids.dart';
import 'package:moniepoint_test/src/presentation/home/widgets/about/reviews_ratings.dart';
import 'package:moniepoint_test/src/presentation/home/widgets/about/seller_info.dart';
import 'package:moniepoint_test/src/presentation/home/widgets/about/shopping.dart';
import 'package:moniepoint_test/src/presentation/home/widgets/about/top_reviews.dart';
import 'package:moniepoint_test/src/presentation/home/widgets/cloth_tile.dart';
import 'package:provider/provider.dart';

class AboutItem extends StatelessWidget {
  const AboutItem({
    super.key,
    required this.cloth,
  });

  final ProductModel cloth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const BrandCategory(),
        25.verticalSpace,
        const Divider(),
        25.verticalSpace,
        const Description(),
        25.verticalSpace,
        const ShippingInfo(),
        25.verticalSpace,
        const SellerInfromation(),
        25.verticalSpace,
        const ReviewsRatings(),
        25.verticalSpace,
        ImagesVideos(cloth: cloth),
        25.verticalSpace,
        const TopReviews(),
        25.verticalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommendation',
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
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
            20.verticalSpace,
            Wrap(
              children: [
                for (var i = 0; i < 2; i++)
                  ClothTile(
                    cloth: context.read<HomeViewModel>().products[i],
                  )
              ],
            ),
          ],
        )
      ],
    );
  }
}
