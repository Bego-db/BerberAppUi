import 'package:berber/core/extension/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoeriesCardWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  const CategoeriesCardWidget({
    super.key,
    required this.imgPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(8.r),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15.h,
                width: MediaQuery.of(context).size.width * 0.25.w,
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                ))),
        SizedBox(
          height: 10.h,
        ),
        Text(
          title,
          style: context.mytextTheme.bodyMedium,
        )
      ],
    );
  }
}
