import 'package:berber/core/constants/icons_constants.dart';
import 'package:berber/core/extension/theme_ext.dart';
import 'package:berber/view/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarPage extends StatelessWidget {
  const NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navBarIcons = [
      IconsConstants.home,
      IconsConstants.chat,
      IconsConstants.profil
    ];
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 300),
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Theme.of(context).tabBarTheme.dividerColor,
          child: TabBar(padding: EdgeInsets.all(10.r), tabs: [
            Tab(
              icon: Image.asset(
                navBarIcons[0],
                height: 30.h,
                width: 47.w,
                color: context.theme.dialogBackgroundColor,
                fit: BoxFit.contain,
              ),
            ),
            Tab(
              icon: SizedBox(
                height: 22.h,
                width: 47.w,
                child: Image.asset(
                  navBarIcons[1],
                  color: context.theme.dialogBackgroundColor,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Tab(
              icon: Image.asset(
                navBarIcons[2],
                color: context.theme.dialogBackgroundColor,
                height: 30.h,
                width: 47.w,
                fit: BoxFit.contain,
              ),
            )
          ]),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeView(),
            Center(child: Text("Chat")),
            Center(child: Text("Profil"))
          ],
        ),
      ),
    );
  }
}
