import 'package:berber/core/components/cards/categories_label_widget.dart';
import 'package:berber/core/constants/icons_constants.dart';
import 'package:berber/core/constants/string_constants.dart';
import 'package:berber/core/extension/padding_ext.dart';
import 'package:berber/core/extension/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaitingCardWidget extends StatelessWidget {
  const WaitingCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 15.r,
      children: [
         const TitleWidget(
          categoriesTitle: StringConstants.yaklasanRandevu,
          seeAll: false,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: context.theme.unselectedWidgetColor),
          child: Padding(
            padding: context.allHigh,
            child: Row(
              children: [
                SizedBox(
                    height: 22.h,
                    width: 22.w,
                    child: Image.asset(IconsConstants.lightCalender)),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "Salon Deniz",
                  style: context.mytextTheme.bodyLarge!
                      .copyWith(color: context.theme.cardColor),
                ),
                const Spacer(),
                Text(
                  "2 Saat Sonra",
                  style: context.mytextTheme.bodyMedium!
                      .copyWith(color: context.theme.cardColor),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
