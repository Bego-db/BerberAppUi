import 'package:berber/core/init/theme/dark_theme.dart';
import 'package:berber/core/init/theme/light_theme.dart';
import 'package:berber/view/home/view/home_view.dart';
import 'package:berber/view/navigation_bar/navbar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: myLightTheme,
          darkTheme: myDarkTheme,
          themeMode: ThemeMode.system, // sistemin temasına göre açılma
          home: child,
        );
      },
      child: const NavBarPage(),
    );
  }
}
