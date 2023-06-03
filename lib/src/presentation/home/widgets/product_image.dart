import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint/src/viewmodel/model/product.dart';

class ProductImage extends StatefulWidget {
  ProductImage({
    super.key,
    required this.cloth,
  }) {
    img = cloth.images.first;
  }

  final ProductModel cloth;
  late String img;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  @override
  void initState() {
    super.initState();
  }

  void changeImg(String i) {
    setState(() => widget.img = i);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: ClipRRect(
            key: ValueKey(widget.img),
            borderRadius: BorderRadius.circular(10.r),
            child: Image.network(
              widget.img,
              width: double.infinity,
              height: 300.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
              top: 16.h,
              left: 16.w,
            ),
            child: Column(
              children: [
                for (var i in widget.cloth.images)
                  GestureDetector(
                    onTap: () => changeImg(i),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 40.w,
                      height: 40.h,
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                          color: i == widget.img
                              ? Colors.amber
                              : Colors.transparent,
                        ),
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
        )
      ],
    );
  }
}
