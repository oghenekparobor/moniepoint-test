import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint/src/app/app.dart';
import 'package:moniepoint/src/config/theme/theme.dart';
import 'package:moniepoint/src/viewmodel/home_viewmodel.dart';
import 'package:moniepoint/src/presentation/home/widgets/appbars/appbar.dart';
import 'package:moniepoint/src/presentation/home/widgets/banner.dart';
import 'package:moniepoint/src/presentation/home/widgets/bottom_nav.dart';
import 'package:moniepoint/src/presentation/home/widgets/category.dart';
import 'package:moniepoint/src/presentation/home/widgets/cloth_tile.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    context.read<HomeViewModel>().scrollController.addListener(() {
      if (context.read<HomeViewModel>().isScrolledToBottom()) {
        context.read<HomeViewModel>().appBarColor = Colors.white;
        context.read<HomeViewModel>().scrollPhysics =
            const ClampingScrollPhysics();
      } else {
        context.read<HomeViewModel>().appBarColor = Colors.transparent;
      }
    });

    context.read<HomeViewModel>().scrollController2.addListener(() {
      if (!context.read<HomeViewModel>().isScrollTop() &&
          context.read<HomeViewModel>().isScrolledToBottom()) {
        context.read<HomeViewModel>().scrollPhysics =
            const ClampingScrollPhysics();
      } else {
        context.read<HomeViewModel>().scrollPhysics =
            const NeverScrollableScrollPhysics();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: context.read<HomeViewModel>().scrollController,
            physics: const PageScrollPhysics(
              parent: ClampingScrollPhysics(),
            ),
            child: Column(
              children: [
                const Banners(),
                const CategoryBar(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  height: (size.height - (170.h + padding.top)),
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Best Sale Product',
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'See more',
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.primaryColor,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                      15.verticalSpace,
                      Expanded(
                        child: Consumer<HomeViewModel>(
                          builder: (_, value, __) => SingleChildScrollView(
                            physics: value.scrollPhysics,
                            controller: value.scrollController2,
                            child: Wrap(
                              children: [
                                for (var cloth
                                    in context.read<HomeViewModel>().products)
                                  ClothTile(cloth: cloth)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const MyAppBar()
        ],
      ),
      bottomNavigationBar: const MyBottomNav(),
    );
  }
}
