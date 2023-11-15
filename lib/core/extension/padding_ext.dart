import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PaddingExtension on BuildContext {
  //All padding_
  EdgeInsets get allLow => const EdgeInsets.all(4).r;
  EdgeInsets get allMedium => const EdgeInsets.all(8).r;
  EdgeInsets get allHigh => const EdgeInsets.all(16).r;

  //Only Padding
  EdgeInsets get onlyTop20 => const EdgeInsets.only(top: 20).r;
  EdgeInsets get onlyRight => const EdgeInsets.only(right: 10).r;
  //Symmetric Padding
  EdgeInsets get horizontal25 => const EdgeInsets.symmetric(horizontal: 25).r;
 
  // Static Kullanıma Örnek
  static EdgeInsets all = const EdgeInsets.all(4);
}
