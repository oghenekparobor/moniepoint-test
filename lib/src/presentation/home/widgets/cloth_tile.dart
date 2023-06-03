import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:moniepoint/src/app/app.dart';
import 'package:moniepoint/src/config/route/route.dart';
import 'package:moniepoint/src/config/theme/theme.dart';
import 'package:moniepoint/src/utils/constant/assets.dart';
import 'package:moniepoint/src/viewmodel/model/product.dart';

class ClothTile extends StatefulWidget {
  const ClothTile({
    super.key,
    required this.cloth,
  });

  final ProductModel cloth;

  @override
  State<ClothTile> createState() => _ClothTileState();
}

class _ClothTileState extends State<ClothTile> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        Routes.detials,
        arguments: widget.cloth,
      ),
      child: Listener(
        onPointerDown: (_) => setState(() => clicked = true),
        onPointerUp: (_) => setState(() => clicked = false),
        child: Container(
          width: size.width * .45,
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 8.h,
          ),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: clicked
                  ? [
                      const BoxShadow(
                        color: Colors.black12,
                        spreadRadius: .5,
                        blurRadius: 13,
                      ),
                    ]
                  : null,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      image: widget.cloth.image,
                      placeholder: kNoImage,
                      height: 80.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Typicons.heart),
                      ),
                    ),
                  ],
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 5),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: clicked ? Colors.white : Colors.transparent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        widget.cloth.type,
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 8.sp,
                          color: Colors.grey,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        widget.cloth.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Typicons.star_filled,
                                  size: 12.sp,
                                  color: Colors.amber,
                                ),
                                3.horizontalSpace,
                                Text(
                                  '4.9',
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    fontSize: 9.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                                3.horizontalSpace,
                                Container(
                                  width: 1,
                                  height: 12.h,
                                  color: Colors.grey,
                                ),
                                3.horizontalSpace,
                                Text(
                                  '2356',
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    fontSize: 9.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          10.horizontalSpace,
                          Text(
                            widget.cloth.price,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 14.sp,
                              color: theme.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          10.verticalSpace
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
