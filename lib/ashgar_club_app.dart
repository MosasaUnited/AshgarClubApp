import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/routes/app_router.dart';
import 'package:shagra_club_app/core/theme/theme_data_style.dart';

class AshgarClubApp extends StatelessWidget {
  const AshgarClubApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp.router(
        title: 'Ashgar Club App',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeDataStyle.light,
        darkTheme: ThemeDataStyle.dark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
