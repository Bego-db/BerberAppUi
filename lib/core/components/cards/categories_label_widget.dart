import 'package:berber/core/constants/string_constants.dart';
import 'package:berber/core/extension/padding_ext.dart';
import 'package:berber/core/extension/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWidget extends StatelessWidget {
  final bool seeAll;
  final String categoriesTitle;
  const TitleWidget({
    super.key,
    this.seeAll = true,
    required this.categoriesTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          categoriesTitle,
          style: context.mytextTheme.labelMedium,
        ),
        seeAll
            ? ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(7.r),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: context.theme.appBarTheme.backgroundColor,
                    highlightColor: context.theme.appBarTheme.backgroundColor,
                    onTap: () {},
                    child: Padding(
                      padding: context.allMedium,
                      child: Text(
                        StringConstants.tumu,
                        style: context.mytextTheme.bodyMedium!
                            .copyWith(color: context.theme.highlightColor),
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
