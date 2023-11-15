import 'package:berber/core/components/buttons/circle_image_button.dart';
import 'package:berber/core/constants/icons_constants.dart';
import 'package:berber/core/constants/string_constants.dart';
import 'package:berber/core/extension/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 144.h,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Row(
        children: [
          Container(
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
              height: 45,
              width: 45,
              child: Image.asset(
                "assets/images/user.png",
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: 9.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.userWelcome,
                style: context.mytextTheme.bodySmall!
                    .copyWith(color: Colors.black),
              ),
              Text("Batuhan.",
                  style: context.mytextTheme.titleLarge!
                      .copyWith(color: Colors.black))
            ],
          ),
        ],
      ),
      actions: [
        CircleImageButton(iconName: IconsConstants.noti, isNoti: true),
        CircleImageButton(iconName: IconsConstants.noti, isNoti: false),
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size(double.infinity, ScreenUtil().screenHeight * 0.16.h);
}
