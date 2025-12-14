import 'package:dompetku/core/routers/app_router_helpers.dart';
import 'package:dompetku/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          navigatorKey: AppRouterHelpers.navigatorKey,
          onGenerateRoute: AppRouterHelpers.generate,
          initialRoute: AppRoute.home,
        );
      },
    );
  }
}
