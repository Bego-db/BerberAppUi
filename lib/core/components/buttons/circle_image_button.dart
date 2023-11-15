import 'package:berber/core/extension/padding_ext.dart';
import 'package:berber/core/extension/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImageButton extends StatelessWidget {
  final String iconName;
  final bool isNoti;
  const CircleImageButton({
    super.key,
    required this.iconName,
    required this.isNoti,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.onlyRight,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,
                shape: BoxShape.circle),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: context.allHigh,
                    child: SizedBox(
                      height: 20.h,
                      width: 20.w,
                      child: Image.asset(
                        iconName,
                        fit: BoxFit.contain,
                      ),
                    ),
                  )),
            ),
          ),
          isNoti == true
              ? Positioned(
                  right: 10,
                  top: 12,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    width: 8.w,
                    height: 8.h,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
