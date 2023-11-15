import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData myLightTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  primaryColor: Color.fromARGB(255, 33, 243, 61),
  primaryColorLight: const Color(0xffbbdefb),
  primaryColorDark: const Color(0xff1976d2),
  useMaterial3: true,
  canvasColor: const Color(0xfffafafa),
  scaffoldBackgroundColor: const Color(0xffF5F5F5),
  cardColor: const Color(0xffffffff), //X bekleyen randevular
  dividerColor: const Color(0x1f000000),
  highlightColor: const Color(0xffA09FA8), //"tümünü gör" text color
  splashColor: const Color(0x66c8c8c8),
  unselectedWidgetColor:
      const Color(0xff111111), //yaklaşan randevular backround
  disabledColor: const Color(0x61000000),
  secondaryHeaderColor: const Color(0xffe3f2fd),
  dialogBackgroundColor: const Color(0xffffffff),
  indicatorColor: const Color(0xff2196f3),
  hintColor: const Color(0x8a000000),

  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: const Color.fromARGB(176, 0, 0, 0),
      fontSize: 13.sp,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      letterSpacing: 0,
      height: 1.2.h,
    ), //x
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 13.sp,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 1.2.h,
    ), //x
    bodyLarge: TextStyle(
      color: const Color.fromARGB(255, 255, 255, 255),
      fontSize: 13.sp,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      height: 1.2.h,
      letterSpacing: 0,
    ), //x
    labelSmall: TextStyle(
      color: const Color(0xdd000000),
      fontSize: 15.sp,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      height: 1.2.h,
    ), //x
    labelMedium: TextStyle(
      color: const Color(0xdd000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: const Color(0xdd000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: const Color(0xdd000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: const Color(0xdd000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: const Color(0xdd000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: const Color(0x8a000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: const Color(0xdd000000),
      letterSpacing: 0,
      fontSize: null,
      height: 1.2.h,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineLarge: TextStyle(
      color: const Color(0xff000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: const Color(0x8a000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: const Color(0x8a000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displayLarge: TextStyle(
      color: const Color(0x8a000000),
      height: 1.2.h,
      letterSpacing: 0,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: TabBarTheme(
      dividerColor: const Color(0xff111111), //Backround Color
      indicator: BoxDecoration(
          color: const Color(0xffFFFFFF).withOpacity(0.20),
          borderRadius: BorderRadius.circular(50.r))),

  appBarTheme: const AppBarTheme(
      scrolledUnderElevation: 0,
      actionsIconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Color(0xffCAE65A), // app bar backround
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xff111111),
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      elevation: 0),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    isDense: false,
    contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color(0x00000000),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xdd000000),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.light,
    deleteIconColor: Color(0xde000000),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3d000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d2196f3),
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff1e88e5);
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff1e88e5);
      }
      return null;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff1e88e5);
      }
      return null;
    }),
    trackColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff1e88e5);
      }
      return null;
    }),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xffffffff)),
  // primaryTextTheme: TextTheme(
  //   displayLarge: TextStyle(
  //     color: Color(0xb3ffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   display3: TextStyle(
  //     color: Color(0xb3ffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   display2: TextStyle(
  //     color: Color(0xb3ffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   display1: TextStyle(
  //     color: Color(0xb3ffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   headline: TextStyle(
  //     color: Color(0xffffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   title: TextStyle(
  //     color: Color(0xffffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   subhead: TextStyle(
  //     color: Color(0xffffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   body2: TextStyle(
  //     color: Color(0xffffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   bodyText1: TextStyle(
  //     color: Color(0xffffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   caption: TextStyle(
  //     color: Color(0xb3ffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   button: TextStyle(
  //     color: Color(0xffffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   subtitle: TextStyle(
  //     color: Color(0xffffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  //   overline: TextStyle(
  //     color: Color(0xffffffff),
  //     fontSize: null,
  //     fontWeight: FontWeight.w400,
  //     fontStyle: FontStyle.normal,
  //   ),
  // ),
  // buttonTheme: const ButtonThemeData(
  //   textTheme: ButtonTextTheme.normal,
  //   minWidth: 88,
  //   height: 36,
  //   padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
  //   shape: RoundedRectangleBorder(
  //     side: BorderSide(
  //       color: Color(0xff000000),
  //       width: 0,
  //       style: BorderStyle.none,
  //     ),
  //     borderRadius: BorderRadius.all(Radius.circular(2.0)),
  //   ),
  //   alignedDropdown: false,
  //   buttonColor: Color(0xffe0e0e0),
  //   disabledColor: Color(0x61000000),
  //   highlightColor: Color(0x29000000),
  //   splashColor: Color(0x1f000000),
  //   focusColor: Color(0x1f000000),
  //   hoverColor: Color(0x0a000000),
  //   colorScheme: ColorScheme(
  //     primary: Color.fromARGB(255, 243, 33, 33),
  //     secondary: Color(0xff2196f3),
  //     surface: Color(0xffffffff),
  //     background: Color(0xff90caf9),
  //     error: Color(0xffd32f2f),
  //     onPrimary: Color(0xffffffff),
  //     onSecondary: Color(0xffffffff),
  //     onSurface: Color(0xff000000),
  //     onBackground: Color(0xffffffff),
  //     onError: Color(0xffffffff),
  //     brightness: Brightness.light,
  //   ),
  // ),
);
