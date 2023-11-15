import 'package:berber/core/constants/icons_constants.dart';
import 'package:berber/core/constants/string_constants.dart';
import 'package:berber/core/extension/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalonCardWidget extends StatelessWidget {
  const SalonCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(8.r),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.16.h,
                width: MediaQuery.of(context).size.width * 0.82.w,
                child: Image.asset(
                  "assets/images/dumyisyeri.jpg",
                  fit: BoxFit.cover,
                ))),
        SizedBox(height: 12.h,),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.82.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Salon Deniz",
                style: context.mytextTheme.labelSmall,
              ),
              RatingBarIndicator(
                unratedColor: Colors.grey,
                rating: 2.86,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemPadding: EdgeInsets.only(left: 2.96.r),
                itemSize: 15.w,
                direction: Axis.horizontal,
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h,),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.82.w,
          child: Row(
            children: [
              Text(
                "Acarlar, Güneş Sk. No:77",
                style: context.mytextTheme.bodyMedium!
                    .copyWith(color: context.theme.highlightColor),
              ),
              const Spacer(),
              SizedBox(
                height: 15.h,
                width: 22.w,
                child: Image.asset(IconsConstants.location,
                    color: context.mytextTheme.bodyMedium!.color),
              ),
              Text("5 ${StringConstants.km}",
                  style: context.mytextTheme.bodyMedium)
            ],
          ),
        )
      ],
    );
  }
}
