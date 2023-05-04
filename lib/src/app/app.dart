import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/src/config/route/route.dart';
import 'package:moniepoint_test/src/config/theme/theme.dart';
import 'package:moniepoint_test/src/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
final size = MediaQuery.of(navKey.currentContext!).size;
final padding = MediaQuery.of(navKey.currentContext!).padding;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => ChangeNotifierProvider.value(
        value: HomeViewModel(),
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: child,
          onGenerateRoute: (settings) => Routes().onGenerateRoute(settings),
          initialRoute: Routes.home,
          navigatorKey: navKey,
        ),
      ),
    );
  }
}
